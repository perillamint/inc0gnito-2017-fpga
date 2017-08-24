PROJ := inc0gnito
PIN_DEF := inc0gnito.pcf
DEVICE := hx8k

SIMCOMPILER := iverilog
SIMULATOR := vvp
VIEWER := gtkwave

TOPMODULE := top

SYNTHFLAGS := -p synth_ice40 -top $(TOPMODULE)
PNRFLAGS := -d $(subst hx,,$(subst lp,,$(DEVICE)))
SIMCOMPFLAGS :=
SIMFLAGS := -v

SRCS = $(wildcard *.v)
TBSRCS = $(filter %_tb.v, $(SRCS))
MODSRCS = $(filter-out %_tb.v %_incl.v inc0gnito_rev.v, $(SRCS))
VVPS = $(patsubst %.v,%.vvp,$(TBSRCS))
VCDS = $(patsubst %_tb.v,%_wave.vcd,$(TBSRCS))

BINS := $(PROJ).bin
RPTS := $(patsubst %.bin,%.rpt,$(BINS))
BLIFS := $(patsubst %.bin,%.blif,$(BINS))
ASCS := $(patsubst %.bin,%.asc,$(BINS))

all: timing bitstream

timing: $(RPTS)

bitstream: $(BINS)

simulate: $(VCDS)

$(BLIFS): %.blif: %.v $(MODSRCS)
	yosys '$(SYNTHFLAGS) -blif $@' $^

$(ASCS): %.asc: $(PIN_DEF) %.blif
	arachne-pnr $(PNRFLAGS) -o $@ -p $^

$(BINS): %.bin: %.asc
	icepack $< $@

$(RPTS): %.rpt: %.asc
	icetime -d $(DEVICE) -mtr $@ $<

$(VVPS): %.vvp: %.v $(MODSRCS) inc0gnito_rev.v
	$(SIMCOMPILER) $(SIMCOMPFLAGS) -o $@ $^

$(VCDS): %_wave.vcd: %_tb.vvp
	$(SIMULATOR) $(SIMFLAGS) $<

inc0gnito_rev.v: $(PIN_DEF) inc0gnito.asc
	icebox_vlog -s -S -p inc0gnito.pcf inc0gnito.asc > inc0gnito_rev.v

clean:
	rm $(wildcard *.vvp) $(wildcard *.vcd) $(BLIFS) $(BINS) $(RPTS) $(ASCS) inc0gnito_rev.v
