wvResizeWindow -win $_nWave1 0 23 1920 1017
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/raid7_2/userb07/b07100/Ascon/ascon.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetCursor -win $_nWave1 4316888.374783 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvOpenFile -win $_nWave1 {/home/raid7_2/userb07/b07100/Ascon/ascon.fsdb}
wvZoom -win $_nWave1 0.000000 5050000.000000
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvZoom -win $_nWave1 0.000000 5050000.000000
wvReloadFile -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 814893.001735 955089.647195
wvSetCursor -win $_nWave1 848300.183881 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvOpenFile -win $_nWave1 {/home/raid7_2/userb07/b07100/Ascon/ascon.fsdb}
wvZoom -win $_nWave1 814893.001735 955089.647195
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvZoom -win $_nWave1 814893.001735 955089.647195
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 787770.915682 814691.266343
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 3837.883169 47973.539618
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvSetCursor -win $_nWave1 44179.032715 -snap {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/G/p/in\[319:0\]} \
{/ascon_tb/G/p/out\[319:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/G/p/in\[319:0\]} \
{/ascon_tb/G/p/out\[319:0\]} \
{/ascon_tb/G/p/x1\[0:4\]} \
{/ascon_tb/G/p/x2\[0:4\]} \
{/ascon_tb/G/p/x3\[0:4\]} \
{/ascon_tb/G/p/x4\[0:4\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 9 10 11 12 )} 
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/G/p/in\[319:0\]} \
{/ascon_tb/G/p/out\[319:0\]} \
{/ascon_tb/G/p/x1\[0:4\]} \
{/ascon_tb/G/p/x2\[0:4\]} \
{/ascon_tb/G/p/x3\[0:4\]} \
{/ascon_tb/G/p/x4\[0:4\]} \
{/ascon_tb/G/p/x\[0:4\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSetPosition -win $_nWave1 {("G2" 13)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvOpenFile -win $_nWave1 {/home/raid7_2/userb07/b07100/Ascon/ascon.fsdb}
wvZoom -win $_nWave1 0.000000 169157.174974
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvZoom -win $_nWave1 0.000000 169157.174974
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 9 10 11 12 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 8 9 10 11 12 13 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 6)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ans\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ans\[0:5\]} \
{/ascon_tb/input_data\[0:9\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ans\[0:5\]} \
{/ascon_tb/input_data\[0:9\]} \
{/ascon_tb/ctr_in\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ans\[0:5\]} \
{/ascon_tb/input_data\[0:9\]} \
{/ascon_tb/ctr_in\[9:0\]} \
{/ascon_tb/input_data\[0:9\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvAddSignal -win $_nWave1 "/ascon_tb/input_data\[0\]\[127:0\]" \
           "/ascon_tb/input_data\[1\]\[127:0\]" \
           "/ascon_tb/input_data\[2\]\[127:0\]" \
           "/ascon_tb/input_data\[3\]\[127:0\]" \
           "/ascon_tb/input_data\[4\]\[127:0\]" \
           "/ascon_tb/input_data\[5\]\[127:0\]" \
           "/ascon_tb/input_data\[6\]\[127:0\]" \
           "/ascon_tb/input_data\[7\]\[127:0\]" \
           "/ascon_tb/input_data\[8\]\[127:0\]" \
           "/ascon_tb/input_data\[9\]\[127:0\]"
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvExpandBus -win $_nWave1
wvSetCursor -win $_nWave1 202090.229727 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvOpenFile -win $_nWave1 {/home/raid7_2/userb07/b07100/Ascon/ascon.fsdb}
wvZoom -win $_nWave1 67663.392610 236820.567584
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvZoom -win $_nWave1 67663.392610 236820.567584
wvReloadFile -win $_nWave1
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 996875.917553 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvOpenFile -win $_nWave1 {/home/raid7_2/userb07/b07100/Ascon/ascon.fsdb}
wvZoom -win $_nWave1 886045.280568 1055202.455542
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvZoom -win $_nWave1 886045.280568 1055202.455542
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvSetPosition -win $_nWave1 {("G2" 21)}
wvSetPosition -win $_nWave1 {("G2" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ans\[0:5\]} \
{/ascon_tb/input_data\[0:9\]} \
{/ascon_tb/ctr_in\[9:0\]} \
{/ascon_tb/input_data\[0:9\]} \
{/ascon_tb/input_data\[0\]\[127:0\]} \
{/ascon_tb/input_data\[1\]\[127:0\]} \
{/ascon_tb/input_data\[2\]\[127:0\]} \
{/ascon_tb/input_data\[3\]\[127:0\]} \
{/ascon_tb/input_data\[4\]\[127:0\]} \
{/ascon_tb/input_data\[5\]\[127:0\]} \
{/ascon_tb/input_data\[6\]\[127:0\]} \
{/ascon_tb/input_data\[7\]\[127:0\]} \
{/ascon_tb/input_data\[8\]\[127:0\]} \
{/ascon_tb/input_data\[9\]\[127:0\]} \
{/ascon_tb/output_data\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 21 )} 
wvSetPosition -win $_nWave1 {("G2" 21)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 977263.491469 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvOpenFile -win $_nWave1 {/home/raid7_2/userb07/b07100/Ascon/ascon.fsdb}
wvZoom -win $_nWave1 886045.280568 1055202.455542
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 21)}
wvZoom -win $_nWave1 886045.280568 1055202.455542
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 11 12 13 14 15 16 17 18 19 20 21 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvZoom -win $_nWave1 142905.125476 156082.224251
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetCursor -win $_nWave1 37820.746888 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvOpenFile -win $_nWave1 {/home/raid7_2/userb07/b07100/Ascon/ascon.fsdb}
wvZoom -win $_nWave1 32871.377662 46048.476437
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvZoom -win $_nWave1 32871.377662 46048.476437
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 113414.297925 142887.712094
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ctr_in\[9:0\]} \
{/ascon_tb/G/p/i\[31:0\]} \
{/ascon_tb/G/p/out\[319:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G2" 10)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 22354.232002 -snap {("G3" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ctr_in\[9:0\]} \
{/ascon_tb/G/p/i\[31:0\]} \
{/ascon_tb/G/p/out\[319:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
{/ascon_tb/G/p_in\[319:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSetPosition -win $_nWave1 {("G2" 11)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ctr_in\[9:0\]} \
{/ascon_tb/G/p/i\[31:0\]} \
{/ascon_tb/G/p/out\[319:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
{/ascon_tb/G/p_in\[319:0\]} \
{/ascon_tb/G/p/in\[319:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ctr_in\[9:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
{/ascon_tb/G/p/in\[319:0\]} \
{/ascon_tb/G/p/out\[319:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetCursor -win $_nWave1 60940.199343 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvOpenFile -win $_nWave1 {/home/raid7_2/userb07/b07100/Ascon/ascon.fsdb}
wvZoom -win $_nWave1 0.000000 235787.313346
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvZoom -win $_nWave1 0.000000 235787.313346
wvReloadFile -win $_nWave1
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 36450.212691 63503.104923
wvZoom -win $_nWave1 34803.254209 45372.832273
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ctr_in\[9:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
{/ascon_tb/G/p/in\[319:0\]} \
{/ascon_tb/G/p/out\[319:0\]} \
{/ascon_tb/G/p/x1\[0:4\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvAddSignal -win $_nWave1 "/ascon_tb/G/p/x1\[0\]\[63:0\]" \
           "/ascon_tb/G/p/x1\[1\]\[63:0\]" "/ascon_tb/G/p/x1\[2\]\[63:0\]" \
           "/ascon_tb/G/p/x1\[3\]\[63:0\]" "/ascon_tb/G/p/x1\[4\]\[63:0\]"
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 16)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 17)}
wvSetPosition -win $_nWave1 {("G2" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ctr_in\[9:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
{/ascon_tb/G/p/in\[319:0\]} \
{/ascon_tb/G/p/out\[319:0\]} \
{/ascon_tb/G/p/x1\[0:4\]} \
{/ascon_tb/G/p/x1\[0\]\[63:0\]} \
{/ascon_tb/G/p/x1\[1\]\[63:0\]} \
{/ascon_tb/G/p/x1\[2\]\[63:0\]} \
{/ascon_tb/G/p/x1\[3\]\[63:0\]} \
{/ascon_tb/G/p/x1\[4\]\[63:0\]} \
{/ascon_tb/G/p/x2\[0:4\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 17 )} 
wvSetPosition -win $_nWave1 {("G2" 17)}
wvSelectSignal -win $_nWave1 {( "G2" 17 )} 
wvAddSignal -win $_nWave1 "/ascon_tb/G/p/x2\[0\]\[63:0\]" \
           "/ascon_tb/G/p/x2\[1\]\[63:0\]" "/ascon_tb/G/p/x2\[2\]\[63:0\]" \
           "/ascon_tb/G/p/x2\[3\]\[63:0\]" "/ascon_tb/G/p/x2\[4\]\[63:0\]"
wvSetPosition -win $_nWave1 {("G2" 17)}
wvSetPosition -win $_nWave1 {("G2" 22)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 23)}
wvSetPosition -win $_nWave1 {("G2" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ctr_in\[9:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
{/ascon_tb/G/p/in\[319:0\]} \
{/ascon_tb/G/p/out\[319:0\]} \
{/ascon_tb/G/p/x1\[0:4\]} \
{/ascon_tb/G/p/x1\[0\]\[63:0\]} \
{/ascon_tb/G/p/x1\[1\]\[63:0\]} \
{/ascon_tb/G/p/x1\[2\]\[63:0\]} \
{/ascon_tb/G/p/x1\[3\]\[63:0\]} \
{/ascon_tb/G/p/x1\[4\]\[63:0\]} \
{/ascon_tb/G/p/x2\[0:4\]} \
{/ascon_tb/G/p/x2\[0\]\[63:0\]} \
{/ascon_tb/G/p/x2\[1\]\[63:0\]} \
{/ascon_tb/G/p/x2\[2\]\[63:0\]} \
{/ascon_tb/G/p/x2\[3\]\[63:0\]} \
{/ascon_tb/G/p/x2\[4\]\[63:0\]} \
{/ascon_tb/G/p/x3\[0:4\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 23 )} 
wvSetPosition -win $_nWave1 {("G2" 23)}
wvSelectSignal -win $_nWave1 {( "G2" 23 )} 
wvAddSignal -win $_nWave1 "/ascon_tb/G/p/x3\[0\]\[63:0\]" \
           "/ascon_tb/G/p/x3\[1\]\[63:0\]" "/ascon_tb/G/p/x3\[2\]\[63:0\]" \
           "/ascon_tb/G/p/x3\[3\]\[63:0\]" "/ascon_tb/G/p/x3\[4\]\[63:0\]"
wvSetPosition -win $_nWave1 {("G2" 23)}
wvSetPosition -win $_nWave1 {("G2" 28)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 29)}
wvSetPosition -win $_nWave1 {("G2" 29)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ctr_in\[9:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
{/ascon_tb/G/p/in\[319:0\]} \
{/ascon_tb/G/p/out\[319:0\]} \
{/ascon_tb/G/p/x1\[0:4\]} \
{/ascon_tb/G/p/x1\[0\]\[63:0\]} \
{/ascon_tb/G/p/x1\[1\]\[63:0\]} \
{/ascon_tb/G/p/x1\[2\]\[63:0\]} \
{/ascon_tb/G/p/x1\[3\]\[63:0\]} \
{/ascon_tb/G/p/x1\[4\]\[63:0\]} \
{/ascon_tb/G/p/x2\[0:4\]} \
{/ascon_tb/G/p/x2\[0\]\[63:0\]} \
{/ascon_tb/G/p/x2\[1\]\[63:0\]} \
{/ascon_tb/G/p/x2\[2\]\[63:0\]} \
{/ascon_tb/G/p/x2\[3\]\[63:0\]} \
{/ascon_tb/G/p/x2\[4\]\[63:0\]} \
{/ascon_tb/G/p/x3\[0:4\]} \
{/ascon_tb/G/p/x3\[0\]\[63:0\]} \
{/ascon_tb/G/p/x3\[1\]\[63:0\]} \
{/ascon_tb/G/p/x3\[2\]\[63:0\]} \
{/ascon_tb/G/p/x3\[3\]\[63:0\]} \
{/ascon_tb/G/p/x3\[4\]\[63:0\]} \
{/ascon_tb/G/p/x4\[0:4\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 29 )} 
wvSetPosition -win $_nWave1 {("G2" 29)}
wvSelectSignal -win $_nWave1 {( "G2" 29 )} 
wvAddSignal -win $_nWave1 "/ascon_tb/G/p/x4\[0\]\[63:0\]" \
           "/ascon_tb/G/p/x4\[1\]\[63:0\]" "/ascon_tb/G/p/x4\[2\]\[63:0\]" \
           "/ascon_tb/G/p/x4\[3\]\[63:0\]" "/ascon_tb/G/p/x4\[4\]\[63:0\]"
wvSetPosition -win $_nWave1 {("G2" 29)}
wvSetPosition -win $_nWave1 {("G2" 34)}
wvExpandBus -win $_nWave1
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 38607.281097 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 39794.443850 -snap {("G2" 12)}
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G2" 35)}
wvSetPosition -win $_nWave1 {("G2" 35)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ctr_in\[9:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
{/ascon_tb/G/p/in\[319:0\]} \
{/ascon_tb/G/p/out\[319:0\]} \
{/ascon_tb/G/p/x1\[0:4\]} \
{/ascon_tb/G/p/x1\[0\]\[63:0\]} \
{/ascon_tb/G/p/x1\[1\]\[63:0\]} \
{/ascon_tb/G/p/x1\[2\]\[63:0\]} \
{/ascon_tb/G/p/x1\[3\]\[63:0\]} \
{/ascon_tb/G/p/x1\[4\]\[63:0\]} \
{/ascon_tb/G/p/x2\[0:4\]} \
{/ascon_tb/G/p/x2\[0\]\[63:0\]} \
{/ascon_tb/G/p/x2\[1\]\[63:0\]} \
{/ascon_tb/G/p/x2\[2\]\[63:0\]} \
{/ascon_tb/G/p/x2\[3\]\[63:0\]} \
{/ascon_tb/G/p/x2\[4\]\[63:0\]} \
{/ascon_tb/G/p/x3\[0:4\]} \
{/ascon_tb/G/p/x3\[0\]\[63:0\]} \
{/ascon_tb/G/p/x3\[1\]\[63:0\]} \
{/ascon_tb/G/p/x3\[2\]\[63:0\]} \
{/ascon_tb/G/p/x3\[3\]\[63:0\]} \
{/ascon_tb/G/p/x3\[4\]\[63:0\]} \
{/ascon_tb/G/p/x4\[0:4\]} \
{/ascon_tb/G/p/x4\[0\]\[63:0\]} \
{/ascon_tb/G/p/x4\[1\]\[63:0\]} \
{/ascon_tb/G/p/x4\[2\]\[63:0\]} \
{/ascon_tb/G/p/x4\[3\]\[63:0\]} \
{/ascon_tb/G/p/x4\[4\]\[63:0\]} \
{/ascon_tb/G/p/x\[0:4\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 35 )} 
wvSetPosition -win $_nWave1 {("G2" 35)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 35 )} 
wvAddSignal -win $_nWave1 "/ascon_tb/G/p/x\[0\]\[63:0\]" \
           "/ascon_tb/G/p/x\[1\]\[63:0\]" "/ascon_tb/G/p/x\[2\]\[63:0\]" \
           "/ascon_tb/G/p/x\[3\]\[63:0\]" "/ascon_tb/G/p/x\[4\]\[63:0\]"
wvSetPosition -win $_nWave1 {("G2" 35)}
wvSetPosition -win $_nWave1 {("G2" 40)}
wvExpandBus -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvOpenFile -win $_nWave1 {/home/raid7_2/userb07/b07100/Ascon/ascon.fsdb}
wvZoom -win $_nWave1 34803.254209 45372.832273
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 40)}
wvZoom -win $_nWave1 34803.254209 45372.832273
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 12 13 14 15 16 17 18 19 20 21 22 23 24 \
           25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvZoomOut -win $_nWave1
wvSearchNext -win $_nWave1
wvZoomIn -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvZoom -win $_nWave1 154655.089296 165122.545833
wvSearchNext -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 549364.482203 562309.742461
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 220131.961877 245146.957544
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ctr_in\[9:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
{/ascon_tb/G/p/in\[319:0\]} \
{/ascon_tb/G/p/out\[319:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSetPosition -win $_nWave1 {("G2" 11)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 153284.523495 177574.446824
wvZoom -win $_nWave1 154765.974132 165370.813847
wvSetCursor -win $_nWave1 155009.321904 -snap {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetCursor -win $_nWave1 156230.224508 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 155845.991185 -snap {("G2" 10)}
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ctr_in\[9:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
{/ascon_tb/G/p/in\[319:0\]} \
{/ascon_tb/G/p/out\[319:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
{/ascon_tb/G/p_in\[319:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSetPosition -win $_nWave1 {("G2" 12)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetCursor -win $_nWave1 159111.974431 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvOpenFile -win $_nWave1 {/home/raid7_2/userb07/b07100/Ascon/ascon.fsdb}
wvZoom -win $_nWave1 148404.672497 169614.351926
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvZoom -win $_nWave1 148404.672497 169614.351926
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetCursor -win $_nWave1 156832.190048 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvOpenFile -win $_nWave1 {/home/raid7_2/userb07/b07100/Ascon/ascon.fsdb}
wvZoom -win $_nWave1 148404.672497 169614.351926
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvZoom -win $_nWave1 148404.672497 169614.351926
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 514383.038346 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvOpenFile -win $_nWave1 {/home/raid7_2/userb07/b07100/Ascon/ascon.fsdb}
wvZoom -win $_nWave1 423806.436340 593483.871772
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvZoom -win $_nWave1 423806.436340 593483.871772
wvReloadFile -win $_nWave1
wvZoom -win $_nWave1 554445.766156 565409.223639
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 864784.290798 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvOpenFile -win $_nWave1 {/home/raid7_2/userb07/b07100/Ascon/ascon.fsdb}
wvZoom -win $_nWave1 599330.914455 950161.553899
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvZoom -win $_nWave1 599330.914455 950161.553899
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvOpenFile -win $_nWave1 {/home/raid7_2/userb07/b07100/Ascon/ascon.fsdb}
wvZoom -win $_nWave1 599330.914455 950161.553899
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvZoom -win $_nWave1 599330.914455 950161.553899
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 676234.007522 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvOpenFile -win $_nWave1 {/home/raid7_2/userb07/b07100/Ascon/ascon.fsdb}
wvZoom -win $_nWave1 599330.914455 950161.553899
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvZoom -win $_nWave1 599330.914455 950161.553899
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 794024.971006 -snap {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetCursor -win $_nWave1 554957.629150 -snap {("G2" 9)}
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvZoom -win $_nWave1 856526.309324 889787.426711
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvZoom -win $_nWave1 874603.003556 885388.764448
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 875065.209434 -snap {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvZoom -win $_nWave1 873502.055682 886528.336952
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 885080.972366 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 875093.072169 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvOpenFile -win $_nWave1 {/home/raid7_2/userb07/b07100/Ascon/ascon.fsdb}
wvZoom -win $_nWave1 859172.061727 911277.186808
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvZoom -win $_nWave1 859172.061727 911277.186808
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ctr_in\[9:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
{/ascon_tb/G/p/in\[319:0\]} \
{/ascon_tb/G/p/out\[319:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
{/ascon_tb/G/p_in\[319:0\]} \
{/ascon_tb/ctr_out\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 14)}
wvSetPosition -win $_nWave1 {("G2" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ctr_in\[9:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
{/ascon_tb/G/p/in\[319:0\]} \
{/ascon_tb/G/p/out\[319:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
{/ascon_tb/G/p_in\[319:0\]} \
{/ascon_tb/ctr_out\[9:0\]} \
{/ascon_tb/output_data\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSetPosition -win $_nWave1 {("G2" 14)}
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvAddSignal -win $_nWave1 "/ascon_tb/output_data\[0\]\[127:0\]" \
           "/ascon_tb/output_data\[1\]\[127:0\]" \
           "/ascon_tb/output_data\[2\]\[127:0\]" \
           "/ascon_tb/output_data\[3\]\[127:0\]" \
           "/ascon_tb/output_data\[4\]\[127:0\]" \
           "/ascon_tb/output_data\[5\]\[127:0\]"
wvSetPosition -win $_nWave1 {("G2" 14)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvSetPosition -win $_nWave1 {("G2" 21)}
wvSetPosition -win $_nWave1 {("G2" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ctr_in\[9:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
{/ascon_tb/G/p/in\[319:0\]} \
{/ascon_tb/G/p/out\[319:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
{/ascon_tb/G/p_in\[319:0\]} \
{/ascon_tb/ctr_out\[9:0\]} \
{/ascon_tb/output_data\[0:5\]} \
{/ascon_tb/output_data\[0\]\[127:0\]} \
{/ascon_tb/output_data\[1\]\[127:0\]} \
{/ascon_tb/output_data\[2\]\[127:0\]} \
{/ascon_tb/output_data\[3\]\[127:0\]} \
{/ascon_tb/output_data\[4\]\[127:0\]} \
{/ascon_tb/output_data\[5\]\[127:0\]} \
{/ascon_tb/o_data\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 21 )} 
wvSetPosition -win $_nWave1 {("G2" 21)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvSetPosition -win $_nWave1 {("G2" 22)}
wvSetPosition -win $_nWave1 {("G2" 22)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ascon_tb/G/state\[3:0\]} \
{/ascon_tb/G/m_len\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/ascon_tb/G/b_ctr\[3:0\]} \
{/ascon_tb/G/o_data\[127:0\]} \
{/ascon_tb/G/i_data\[127:0\]} \
{/ascon_tb/G/data\[319:0\]} \
{/ascon_tb/G/ctr\[3:0\]} \
{/ascon_tb/G/o_nxt_data} \
{/ascon_tb/ctr_in\[9:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
{/ascon_tb/G/p/in\[319:0\]} \
{/ascon_tb/G/p/out\[319:0\]} \
{/ascon_tb/G/p/round_c\[7:0\]} \
{/ascon_tb/G/p_in\[319:0\]} \
{/ascon_tb/ctr_out\[9:0\]} \
{/ascon_tb/output_data\[0:5\]} \
{/ascon_tb/output_data\[0\]\[127:0\]} \
{/ascon_tb/output_data\[1\]\[127:0\]} \
{/ascon_tb/output_data\[2\]\[127:0\]} \
{/ascon_tb/output_data\[3\]\[127:0\]} \
{/ascon_tb/output_data\[4\]\[127:0\]} \
{/ascon_tb/output_data\[5\]\[127:0\]} \
{/ascon_tb/o_data\[127:0\]} \
{/ascon_tb/o_fin} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 22 )} 
wvSetPosition -win $_nWave1 {("G2" 22)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 990851.059684 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvOpenFile -win $_nWave1 {/home/raid7_2/userb07/b07100/Ascon/ascon.fsdb}
wvZoom -win $_nWave1 963382.597006 1015487.722087
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 22)}
wvZoom -win $_nWave1 963382.597006 1015487.722087
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 992644.533193
wvSetCursor -win $_nWave1 996483.195789
wvSetCursor -win $_nWave1 994941.437861
wvSetCursor -win $_nWave1 989623.946232 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvOpenFile -win $_nWave1 {/home/raid7_2/userb07/b07100/Ascon/ascon.fsdb}
wvZoom -win $_nWave1 963382.597006 1015487.722087
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalSetScope -win $_nWave1 "/ascon_tb"
wvGetSignalSetScope -win $_nWave1 "/ascon_tb/G/p"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 22)}
wvZoom -win $_nWave1 963382.597006 1015487.722087
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 990253.235182 -snap {("G3" 0)}
