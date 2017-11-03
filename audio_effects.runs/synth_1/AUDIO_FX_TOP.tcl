# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.cache/wt [current_project]
set_property parent.project_path C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
add_files C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/hello_data.coe
add_files -quiet c:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.dcp
set_property used_in_implementation false [get_files c:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.dcp]
read_verilog -library xil_defaultlib {
<<<<<<< HEAD
  {C:/Users/Wei Zheng/Desktop/NUS/Y2S1/EE2020/Project/audio_effects/audio_effects.srcs/sources_1/new/debouncer.v}
  {C:/Users/Wei Zheng/Desktop/NUS/Y2S1/EE2020/Project/audio_effects/audio_effects.srcs/sources_1/new/BINtoINT.v}
  {C:/Users/Wei Zheng/Desktop/NUS/Y2S1/EE2020/Project/audio_effects/audio_effects.srcs/sources_1/new/INTtoSEG.v}
  {C:/Users/Wei Zheng/Desktop/NUS/Y2S1/EE2020/Project/audio_effects/audio_effects.srcs/sources_1/new/Sev_Seg.v}
  {C:/Users/Wei Zheng/Desktop/NUS/Y2S1/EE2020/Project/audio_effects/audio_effects.srcs/sources_1/new/TARGET_FREQ_CALC.v}
  {C:/Users/Wei Zheng/Desktop/NUS/Y2S1/EE2020/Project/audio_effects/audio_effects.srcs/sources_1/new/my_dff.v}
  {C:/Users/Wei Zheng/Desktop/NUS/Y2S1/EE2020/Project/audio_effects/audio_effects.srcs/sources_1/new/CLK_VAR.v}
  {C:/Users/Wei Zheng/Desktop/NUS/Y2S1/EE2020/Project/audio_effects/audio_effects.srcs/sources_1/new/PS2Receiver.v}
  {C:/Users/Wei Zheng/Desktop/NUS/Y2S1/EE2020/Project/audio_effects/audio_effects.srcs/sources_1/new/volume_indicator.v}
  {C:/Users/Wei Zheng/Desktop/NUS/Y2S1/EE2020/Project/audio_effects/audio_effects.srcs/sources_1/new/SSegDisp.v}
  {C:/Users/Wei Zheng/Desktop/NUS/Y2S1/EE2020/Project/audio_effects/audio_effects.srcs/sources_1/new/SPI.v}
  {C:/Users/Wei Zheng/Desktop/NUS/Y2S1/EE2020/Project/audio_effects/audio_effects.srcs/sources_1/new/SINGLE_PULSE_DFF.v}
  {C:/Users/Wei Zheng/Desktop/NUS/Y2S1/EE2020/Project/audio_effects/audio_effects.srcs/sources_1/new/KEYBOARD_MAP.v}
  {C:/Users/Wei Zheng/Desktop/NUS/Y2S1/EE2020/Project/audio_effects/audio_effects.srcs/sources_1/new/FLEXIBLE_CLK_DIVIDER.v}
  {C:/Users/Wei Zheng/Desktop/NUS/Y2S1/EE2020/Project/audio_effects/audio_effects.srcs/sources_1/new/CLK_50M.v}
  {C:/Users/Wei Zheng/Desktop/NUS/Y2S1/EE2020/Project/audio_effects/audio_effects.srcs/sources_1/new/CLK_20K.v}
  {C:/Users/Wei Zheng/Desktop/NUS/Y2S1/EE2020/Project/audio_effects/audio_effects.srcs/sources_1/new/top.v}
  {C:/Users/Wei Zheng/Desktop/NUS/Y2S1/EE2020/Project/audio_effects/audio_effects.srcs/sources_1/new/AUDIO_FX_TOP.v}
=======
  C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/sources_1/new/debouncer.v
  C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/sources_1/new/BINtoINT.v
  C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/sources_1/new/INTtoSEG.v
  C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/sources_1/new/Sev_Seg.v
  C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/sources_1/new/TARGET_FREQ_CALC.v
  C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/sources_1/new/my_dff.v
  C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/sources_1/new/CLK_VAR.v
  C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/sources_1/new/PS2Receiver.v
  C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/sources_1/new/SSegDisp.v
  C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/sources_1/new/SPI.v
  C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/sources_1/new/SINGLE_PULSE_DFF.v
  C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/sources_1/new/KEYBOARD_MAP.v
  C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/sources_1/new/FLEXIBLE_CLK_DIVIDER.v
  C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/sources_1/new/CLK_50M.v
  C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/sources_1/new/CLK_20K.v
  C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/sources_1/new/top.v
  C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/sources_1/new/AUDIO_FX_TOP.v
>>>>>>> c2027a5c5052184b638eb29d2a066ee7f1539819
}
read_vhdl -library xil_defaultlib C:/Users/vik/Desktop/EE2020_Project_Template.xpr/audio_effects/audio_effects.srcs/sources_1/imports/audio_effects.srcs/DA2CompRef.vhd
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/constrs_1/imports/Learn/Basys3_Master.xdc
set_property used_in_implementation false [get_files C:/Users/vik/Desktop/EE2020_Project_Template.xpr/EE2020/audio_effects.srcs/constrs_1/imports/Learn/Basys3_Master.xdc]


synth_design -top AUDIO_FX_TOP -part xc7a35tcpg236-1


write_checkpoint -force -noxdef AUDIO_FX_TOP.dcp

catch { report_utilization -file AUDIO_FX_TOP_utilization_synth.rpt -pb AUDIO_FX_TOP_utilization_synth.pb }
