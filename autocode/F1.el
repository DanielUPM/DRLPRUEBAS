-- Generated automatically by - PROOSIS - 3.8.1 


USE LPRES VERSION "1.3.5"


-- EL code of the schematic.
-- The COMPONENT definition lines are blocked for edition.
-- You can edit the parameters clicking over them.

COMPONENT F1 



TOPOLOGY
   LPRES.TankOpen TankOpen_F(
      fluid = RP_1,	-- Non default value.
      T_d = 300	-- Non default value.
   )

   LPRES.TankOpen TankOpen_O(
      fluid = LOX,
      T_d = 85	-- Non default value.
   )

   LPRES.Pump(
      Type = Off_design	-- Non default value.
   ) Pump_F(
      eta_d = 0.85,	-- Non default value.
      phi_d = 0.0428,	-- Non default value.
      psi_d = 0.108,	-- Non default value.
      A_in = 0.0541868469,	-- Non default value.
      r_m = 0.72263409,	-- Non default value.
      dp = 131e5,	-- Non default value.
      U_0 = 500)

   LPRES.Pump(
      Type = Off_design	-- Non default value.
   ) Pump_O(
      eta_d = 0.9,	-- Non default value.
      phi_d = 0.0428,	-- Non default value.
      psi_d = 0.108,	-- Non default value.
      A_in = 0.125397196,	-- Non default value.
      r_m = 0.477942772,	-- Non default value.
      dp = 90e5,	-- Non default value.
      U_0 = 500)

   LPRES.Shaft Shaft_1(
      eta = 1)

   LPRES.Turbine_ch(
      Type = Off_design	-- Non default value.
   ) Turbine_ch(
      eta_d = 0.8,	-- Non default value.
      alpha_2 = 45,
      A_in = 0.00692409717,	-- Non default value.
      rpm = 5550,	-- Non default value.
      pi = 10,
      W = 77.11	-- Non default value.
   )

   LPRES.Nozzle(
      Type = Off_design	-- Non default value.
   ) Nozzle_1(
      A = 0.346776149	-- Non default value.
   )

   LPRES.ControlPanel ControlPanel_1

   LPRES.CombCha(
      Type = Off_design,	-- Non default value.
      Cooled = No) CombCha_1(
      eta_d = 1,	-- Non default value.
      OF_st = 2.27,	-- Non default value.
      Q_comb = 11e6,	-- Non default value.
      cp_P = 2169,	-- Non default value.
      M_P = 23,	-- Non default value.
      AR = 10,
      A_th = 0.637328951,	-- Non default value.
      p_c = 68e5,	-- Non default value.
      AR_r = 10 / 2,
      A_wet = 1,
      Zone = Divergent,
      p_c0 = 5000000,
      T_c0 = 4000,
      W_F0 = 2000,	-- Non default value.
      M_oxid = 31.9988,
      M_fuel = 172,	-- Non default value.
      T_ch = 3000,
      rho_ch = 1,
      mfr_ch = 10,
      temp_ch = 0.032)

   LPRES.GasGen(
      Type = Design) GasGen(
      eta_d = 1,	-- Non default value.
      OF_st = 2.27,	-- Non default value.
      Q_comb = 11e6,	-- Non default value.
      cp_P = 2169,	-- Non default value.
      M_P = 23,	-- Non default value.
      p_c = 5000000,
      p_c0 = 5000000,
      T_c0 = 4000,
      W_F0 = 200,	-- Non default value.
      A_th = 0.05,
      M_oxid = 31.9988,
      M_fuel = 2.01594,
      T_ch = 3000,
      rho_ch = 1,
      mfr_ch = 10,
      temp_ch = 0.032)

   LPRES.Injector(
      Type = Off_design	-- Non default value.
   ) Injector_O(
      C_D = 0.5,
      A = 0.0489035601,	-- Non default value.
      W = 100)

   LPRES.Injector(
      Type = Off_design	-- Non default value.
   ) Injector_F(
      C_D = 0.5,
      A = 0.0143139263,	-- Non default value.
      W = 100)

   LPRES.ThrustMonitor ThrustMonitor_1

   LPRES.FlowMeter FlowMeter_F

   LPRES.FlowMeter FlowMeter_O

   LPRES.SplitFrac SplitFrac_F(
      TPL = 1	-- Non default value.
   )

   LPRES.SplitFrac SplitFrac_O(
      TPL = 1	-- Non default value.
   )

   CONNECT Turbine_ch.f_out TO Nozzle_1.g
   CONNECT CombCha_1.g TO ThrustMonitor_1.g
   CONNECT CombCha_1.i TO ControlPanel_1.i_Comb
   CONNECT ThrustMonitor_1.i TO ControlPanel_1.i_Thrust
   CONNECT Nozzle_1.i TO ThrustMonitor_1.i
   CONNECT TankOpen_F.l TO FlowMeter_F.f_in
   CONNECT FlowMeter_F.f_out TO Pump_F.f_in
   CONNECT FlowMeter_F.i TO ControlPanel_1.i_W
   CONNECT Injector_F.f_out TO CombCha_1.f_F
   CONNECT Injector_O.f_out TO CombCha_1.f_O
   CONNECT SplitFrac_F.f_out TO Injector_F.f_in
   CONNECT Pump_F.f_out TO SplitFrac_F.f_in
   CONNECT SplitFrac_F.f_b TO GasGen.f_F
   CONNECT TankOpen_O.l TO FlowMeter_O.f_in
   CONNECT FlowMeter_O.f_out TO Pump_O.f_in
   CONNECT FlowMeter_O.i TO ControlPanel_1.i_W
   CONNECT GasGen.g TO Turbine_ch.f_in
   CONNECT Shaft_1.m_1 TO Pump_O.m
   CONNECT Shaft_1.m_1 TO Pump_F.m
   CONNECT Shaft_1.m_2 TO Turbine_ch.m
   CONNECT Pump_O.f_out TO SplitFrac_O.f_in
   CONNECT SplitFrac_O.f_out TO Injector_O.f_in
   CONNECT SplitFrac_O.f_b TO GasGen.f_O

END COMPONENT