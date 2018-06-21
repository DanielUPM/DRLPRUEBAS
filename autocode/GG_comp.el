-- Generated automatically by - PROOSIS - 3.8.1 


USE LPRES VERSION "1.3.5"


-- EL code of the schematic.
-- The COMPONENT definition lines are blocked for edition.
-- You can edit the parameters clicking over them.

COMPONENT GG_comp 

TOPOLOGY
   LPRES.GasGen GasGen_1(
      TPL_d = 0.9,
      eta_d = 0.99,	-- Non default value.
      OF_st = 8,
      Q_comb = 14.7e6,	-- Non default value.
      cp_P = 3700,	-- Non default value.
      M_P = 14.25,	-- Non default value.
      OF = 4,
      W_F0 = 100)

   LPRES.Injector(
      Type = Off_design	-- Non default value.
   ) Injector_F(
      C_D = 0.5,
      A = 0.00178349971,	-- Non default value.
      W = 2.70069069	-- Non default value.
   )

   LPRES.Injector(
      Type = Off_design	-- Non default value.
   ) Injector_O(
      C_D = 0.5,
      A = 0.000580606872,	-- Non default value.
      W = 16.3526821	-- Non default value.
   )

   LPRES.Inlet(
      Type = Unknown_W	-- Non default value.
   ) LH2_circuit(
      fluid = H2,	-- Non default value.
      W = 2.70069069	-- Non default value.
   )

   LPRES.Inlet(
      Type = Unknown_W	-- Non default value.
   ) LO2_circuit(
      fluid = LOX,
      W = 16.3526821	-- Non default value.
   )

   LPRES.NozzleConDiv(
      Type = Design) NozzleConDiv_1(
      AR = 56.88798558,	-- Non default value.
      A_th = 0.05,
      W = 100)

   LPRES.ThrustMonitor ThrustMonitor_1

   CONNECT GasGen_1.g TO NozzleConDiv_1.g_in
   CONNECT Injector_F.f_out TO GasGen_1.f_F
   CONNECT Injector_O.f_out TO GasGen_1.f_O
   CONNECT LH2_circuit.f TO Injector_F.f_in
   CONNECT LO2_circuit.f TO Injector_O.f_in
   CONNECT NozzleConDiv_1.g_out TO ThrustMonitor_1.g

END COMPONENT