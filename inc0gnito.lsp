(declare-const d0 Bool)
(declare-const d1 Bool)
(declare-const d2 Bool)
(declare-const d3 Bool)
(declare-const d4 Bool)
(declare-const d5 Bool)
(declare-const d6 Bool)
(declare-const d7 Bool)
(declare-const d8 Bool)
(declare-const d9 Bool)
(declare-const d10 Bool)
(declare-const d11 Bool)
(declare-const d12 Bool)
(declare-const d13 Bool)
(declare-const d14 Bool)
(declare-const d15 Bool)
(declare-const d16 Bool)
(declare-const d17 Bool)
(declare-const d18 Bool)
(declare-const d19 Bool)
(declare-const d20 Bool)
(declare-const d21 Bool)
(declare-const d22 Bool)
(declare-const d23 Bool)
(declare-const d24 Bool)
(declare-const d25 Bool)
(declare-const d26 Bool)
(declare-const d27 Bool)
(declare-const d28 Bool)
(declare-const d29 Bool)
(declare-const d30 Bool)
(declare-const d31 Bool)
(declare-const k0 Bool)
(declare-const k1 Bool)
(declare-const k2 Bool)
(declare-const k3 Bool)
(declare-const k4 Bool)
(declare-const k5 Bool)
(declare-const k6 Bool)
(declare-const k7 Bool)
(declare-const k8 Bool)
(declare-const k9 Bool)
(declare-const k10 Bool)
(declare-const k11 Bool)
(declare-const k12 Bool)
(declare-const k13 Bool)
(declare-const k14 Bool)
(declare-const k15 Bool)
(declare-const k16 Bool)
(declare-const k17 Bool)
(declare-const k18 Bool)
(declare-const k19 Bool)
(declare-const k20 Bool)
(declare-const k21 Bool)
(declare-const k22 Bool)
(declare-const k23 Bool)
(declare-const k24 Bool)
(declare-const k25 Bool)
(declare-const k26 Bool)
(declare-const k27 Bool)
(declare-const k28 Bool)
(declare-const k29 Bool)
(declare-const k30 Bool)
(declare-const k31 Bool)

;; Declare for key port

(declare-const n18 Bool)
(declare-const n19 Bool)
(declare-const n28 Bool)
(declare-const n31 Bool)
(declare-const n32 Bool)
(declare-const n33 Bool)
(declare-const n36 Bool)
(declare-const n43 Bool)
(declare-const n46 Bool)
(declare-const n49 Bool)
(declare-const n68 Bool)
(declare-const n69 Bool)
(declare-const n70 Bool)
(declare-const n71 Bool)
(declare-const n72 Bool)
(declare-const n73 Bool)
(declare-const n74 Bool)
(declare-const n75 Bool)
(declare-const n76 Bool)
(declare-const n77 Bool)
(declare-const n78 Bool)

(assert (= d17 d18))
(assert (= d14 d18))
(assert (= d11 d18))
(assert (= d10 d18))
(assert (= d6 d18))
(assert (= d2 d18))
(assert (= d0 d18))
(assert (= d22 d18))

;; LUTs

;; assign n68 = /* LUT    1 21  1 */ \key[23]  ? 1'b0 : \key[20]  ? 1'b0 : \key[15]  ? 1'b0 : \key[11]  ? 1'b0 : 1'b1;
(assert (= n68
           (if k23
               false
             (if k20
                 false
               (if k15
                   false
                 (if k11
                     false
                   true))))))

;; assign n69 = /* LUT    1 21  2 */ n49 ? n43 ? n31 ? n19 ? 1'b1 : 1'b0 : 1'b0 : 1'b0 : 1'b0;
(assert (= n69
           (if n49
               (if n43
                   (if n31
                       (if n19
                           true
                         false)
                     false)
                 false)
             false)))

;; assign n70 = /* LUT    1 16  2 */ \key[30]  ? \key[27]  ? \key[26]  ? \key[22]  ? 1'b1 : 1'b0 : 1'b0 : 1'b0 : 1'b0;
(assert (= n70
           (if k30
               (if k27
                   (if k26
                       (if k22
                           true
                         false)
                     false)
                 false)
             false)))

;; assign n71 = /* LUT    1 20  6 */ \key[21]  ? \key[19]  ? \key[18]  ? \key[17]  ? 1'b1 : 1'b0 : 1'b0 : 1'b0 : 1'b0;
(assert (= n71
           (if k21
               (if k19
                   (if k18
                       (if k17
                           true
                         false)
                     false)
                 false)
             false)))

;; assign n72 = /* LUT    1 22  4 */ \key[16]  ? \key[14]  ? \key[13]  ? \key[12]  ? 1'b1 : 1'b0 : 1'b0 : 1'b0 : 1'b0;
(assert (= n72
           (if k16
               (if k14
                   (if k13
                       (if k12
                           true
                         false)
                     false)
                 false)
             false)))

;; assign n73 = /* LUT    1 25  5 */ \key[9]  ? 1'b0 : \key[8]  ? 1'b0 : \key[7]  ? 1'b0 : \key[5]  ? 1'b0 : 1'b1;
(assert (= n73
           (if k9
               false
             (if k8
                 false
               (if k7
                   false
                 (if k5
                     false
                   true))))))

;; assign n74 = /* LUT    1 21  4 */ n28 ? n18 ? n46 ? n36 ? 1'b1 : 1'b0 : 1'b0 : 1'b0 : 1'b0;
(assert (= n74
           (if n28
               (if n18
                   (if n46
                       (if n36
                           true
                         false)
                     false)
                 false)
             false)))

;; assign n75 = /* LUT    1 28  3 */ \key[3]  ? 1'b0 : \key[2]  ? 1'b0 : \key[0]  ? 1'b0 : \key[31]  ? 1'b0 : 1'b1;
(assert (= n75
           (if k3
               false
             (if k2
                 false
               (if k0
                   false
                 (if k31
                     false
                   true))))))

;; assign n76 = /* LUT    1 27  7 */ \key[10]  ? \key[6]  ? \key[4]  ? \key[1]  ? 1'b1 : 1'b0 : 1'b0 : 1'b0 : 1'b0;
(assert (= n76
           (if k10
               (if k6
                   (if k4
                       (if k1
                           true
                         false)
                     false)
                 false)
             false)))

;; assign n77 = /* LUT    1 16  5 */ \key[29]  ? 1'b0 : \key[28]  ? 1'b0 : \key[25]  ? 1'b0 : \key[24]  ? 1'b0 : 1'b1;
(assert (= n77
           (if k29
               false
             (if k28
                 false
               (if k25
                   false
                 (if k24
                     false
                   true))))))

;; assign n78 = /* LUT    1 21  6 */ 1'b0 ? 1'b0 : 1'b0 ? 1'b0 : n32 ? n33 ? 1'b1 : 1'b0 : 1'b0;
(assert (= n78
           (if n32
               (if n33
                   true
                 false)
             false)))

;; Wire assignment
(assert (= n31 n68))
(assert (= n32 n69))
(assert (= n18 n70))
(assert (= n28 n71))
(assert (= n36 n72))
(assert (= n43 n73))
(assert (= n33 n74))
(assert (= n49 n75))
(assert (= n46 n76))
(assert (= n19 n77))

;; posedge clk
(assert (= d18 n78))

;; NULL is not the answer
(assert (or 
	  d0
	  d1
	  d2
	  d3
	  d4
	  d5
	  d6
	  d7
	  d8
	  d9
	  d10
	  d11
	  d12
	  d13
	  d14
	  d15
	  d16
	  d17
	  d18
	  d19
	  d20
	  d21
	  d22
	  d23
	  d24
	  d25
	  d26
	  d27
	  d28
	  d29
	  d30
	  d31
	  ))

(check-sat)
(get-model)

