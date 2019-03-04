(function (root, factory) {
    if (typeof define === 'function' && define.amd) {
        // AMD. Register as an anonymous module.
        define(['exports', 'echarts'], factory);
    } else if (typeof exports === 'object' && typeof exports.nodeName !== 'string') {
        // CommonJS
        factory(exports, require('echarts'));
    } else {
        // Browser globals
        factory({}, root.echarts);
    }
}(this, function (exports, echarts) {
    var log = function (msg) {
        if (typeof console !== 'undefined') {
            console && console.error && console.error(msg);
        }
    };
    if (!echarts) {
        log('ECharts is not Loaded');
        return;
    }
    echarts.registerTheme('wonderland', {
        "color": [
            "#72afce",
            "#6aba67",
            "#e86733",
            "#38bcff",
            "#fbbb3f",
            "#fa7887",
            "#a7c369", 
            "#c08fdd",
        ],
        "backgroundColor": "rgba(255,255,255,0)",
        "textStyle": {},
        "title": {
            "textStyle": {
                "color": "#303030",
            },
            "subtextStyle": {
                "color": "#707070",
                "fontSize": "16",
            }
        },
        "line": {
            "itemStyle": {
                "normal": {
                    "borderWidth": "2"
                }
            },
            "lineStyle": {
                "normal": {
                    "width": "2"
                }
            },
            "symbolSize": "4",
            "symbol": "emptyCircle",
            "smooth": true
        },
        "radar": {
            "itemStyle": {
                "normal": {
                    "borderWidth": "2"
                }
            },
            "lineStyle": {
                "normal": {
                    "width": "2"
                }
            },
            "symbolSize": "4",
            "symbol": "emptyCircle",
            "smooth": true
        },
        "bar": {
            "itemStyle": {
                "normal": {
                    "barBorderWidth": 0,
                    "barBorderColor": "#cccccc"
                },
                "emphasis": {
                    "barBorderWidth": 0,
                    "barBorderColor": "#cccccc"
                }
            }
        },
        "pie": {
            "itemStyle": {
                "normal": {
                    "borderWidth": 0,
                    "borderColor": "#cccccc"
                },
                "emphasis": {
                    "borderWidth": 0,
                    "borderColor": "#cccccc"
                }
            }
        },
        "scatter": {
            "itemStyle": {
                "normal": {
                    "borderWidth": 0,
                    "borderColor": "#cccccc"
                },
                "emphasis": {
                    "borderWidth": 0,
                    "borderColor": "#cccccc"
                }
            }
        },
        "boxplot": {
            "itemStyle": {
                "normal": {
                    "borderWidth": 0,
                    "borderColor": "#cccccc"
                },
                "emphasis": {
                    "borderWidth": 0,
                    "borderColor": "#cccccc"
                }
            }
        },
        "parallel": {
            "itemStyle": {
                "normal": {
                    "borderWidth": 0,
                    "borderColor": "#cccccc"
                },
                "emphasis": {
                    "borderWidth": 0,
                    "borderColor": "#cccccc"
                }
            }
        },
        "sankey": {
            "itemStyle": {
                "normal": {
                    "borderWidth": 0,
                    "borderColor": "#cccccc"
                },
                "emphasis": {
                    "borderWidth": 0,
                    "borderColor": "#cccccc"
                }
            }
        },
        "funnel": {
            "itemStyle": {
                "normal": {
                    "borderWidth": 0,
                    "borderColor": "#cccccc"
                },
                "emphasis": {
                    "borderWidth": 0,
                    "borderColor": "#cccccc"
                }
            }
        },
        "gauge": {
            "itemStyle": {
                "normal": {
                    "borderWidth": 0,
                    "borderColor": "#cccccc"
                },
                "emphasis": {
                    "borderWidth": 0,
                    "borderColor": "#cccccc"
                }
            }
        },
        "candlestick": {
            "itemStyle": {
                "normal": {
                    "color": "#d0648a",
                    "color0": "transparent",
                    "borderColor": "#d0648a",
                    "borderColor0": "#22c3aa",
                    "borderWidth": "1"
                }
            }
        },
        "graph": {
            "itemStyle": {
                "normal": {
                    "borderWidth": 0,
                    "borderColor": "#cccccc"
                }
            },
            "lineStyle": {
                "normal": {
                    "width": "1",
                    "color": "#cccccc",
                    "fontSize": "16",
                }
            },
            "symbolSize": "4",
            "symbol": "emptyCircle",
            "smooth": true,
            "color": [
                "#72afce",
                "#6aba67",
                "#e86733",
                "#38bcff",
                "#fbbb3f"
            ],
            "label": {
                "normal": {
                    "textStyle": {
                        "color": "#ffffff",
                        "fontSize": "16",
                    }
                }
            }
        },
        "map": {
            "itemStyle": {
                "normal": {
                    "areaColor": "#dedede",
                    "borderColor": "#ffffff",
                    "borderWidth": "1"
                },
                "emphasis": {
                    "areaColor": "",
                    "borderColor": "#ffffff",
                    "borderWidth": "1"
                }
            },
            "label": {
                "normal": {
                    "textStyle": {
                        "color": "#ffffff",
                        "fontSize": "16",
                    }
                },
                "emphasis": {
                    "textStyle": {
                        "color": "rgb(255,255,255)",
                        "fontSize": "16",
                    }
                }
            }
        },
        "geo": {
            "itemStyle": {
                "normal": {
                    "areaColor": "#dedede",
                    "borderColor": "#ffffff",
                    "borderWidth": "1"
                },
                "emphasis": {
                    "areaColor": "rgba(16,205,247,0.85)",
                    "borderColor": "#ffffff",
                    "borderWidth": "1"
                }
            },
            "label": {
                "normal": {
                    "textStyle": {
                        "color": "#ffffff",
                        "fontSize": "16"
                    }
                },
                "emphasis": {
                    "textStyle": {
                        "color": "rgb(255,255,255)",
                        "fontSize": "16"
                    }
                }
            }
        },
        "categoryAxis": {
            "axisLine": {
                "show": true,
                "lineStyle": {
                    "color": "#696969",
                    "fontSize": "16"
                }
            },
            "axisTick": {
                "show": true,
                "lineStyle": {
                    "color": "#696969",
                    "fontSize": "16"
                }
            },
            "axisLabel": {
                "show": true,
                "textStyle": {
                    "color": "#696969",
                    "fontSize": "16"
                }
            },
            "splitLine": {
                "show": true,
                "lineStyle": {
                    "color": [
                        "#eeeeee"
                    ],
                    "fontSize": "16"
                }
            },
            "splitArea": {
                "show": true,
                "areaStyle": {
                    "color": [
                        "rgba(250,250,250,0.05)",
                        "rgba(255,255,255,0.02)"
                    ],
                    "fontSize": "16"
                }
            }
        },
        "valueAxis": {
            "axisLine": {
                "show": true,
                "lineStyle": {
                    "color": "#696969",
                    "fontSize": "16"
                }
            },
            "axisTick": {
                "show": true,
                "lineStyle": {
                    "color": "#696969",
                    "fontSize": "16"
                }
            },
            "axisLabel": {
                "show": true,
                "textStyle": {
                    "color": "#696969",
                    "fontSize": "16"
                }
            },
            "splitLine": {
                "show": true,
                "lineStyle": {
                    "color": [
                        "#eeeeee"
                    ]
                }
            },
            "splitArea": {
                "show": true,
                "areaStyle": {
                    "color": [
                        "rgba(250,250,250,0.05)",
                        "rgba(255,255,255,0.02)"
                    ]
                }
            }
        },
        "logAxis": {
            "axisLine": {
                "show": true,
                "lineStyle": {
                    "color": "#696969",
                    "fontSize": "16"
                }
            },
            "axisTick": {
                "show": true,
                "lineStyle": {
                    "color": "#696969",
                    "fontSize": "16"
                }
            },
            "axisLabel": {
                "show": true,
                "textStyle": {
                    "color": "#696969",
                    "fontSize": "16"
                }
            },
            "splitLine": {
                "show": true,
                "lineStyle": {
                    "color": [
                        "#eeeeee"
                    ]
                }
            },
            "splitArea": {
                "show": true,
                "areaStyle": {
                    "color": [
                        "rgba(250,250,250,0.05)",
                        "rgba(255,255,255,0.02)"
                    ]
                }
            }
        },
        "timeAxis": {
            "axisLine": {
                "show": true,
                "lineStyle": {
                    "color": "#696969"
                }
            },
            "axisTick": {
                "show": true,
                "lineStyle": {
                    "color": "#696969",
                    "fontSize": "16"
                }
            },
            "axisLabel": {
                "show": true,
                "textStyle": {
                    "color": "#696969",
                    "fontSize": "16"
                }
            },
            "splitLine": {
                "show": true,
                "lineStyle": {
                    "color": [
                        "#eeeeee"
                    ]
                }
            },
            "splitArea": {
                "show": true,
                "areaStyle": {
                    "color": [
                        "rgba(250,250,250,0.05)",
                        "rgba(255,255,255,0.02)"
                    ]
                }
            }
        },
        "toolbox": {
            "iconStyle": {
                "normal": {
                    "borderColor": "#999999"
                },
                "emphasis": {
                    "borderColor": "#666666"
                }
            }
        },
        "legend": {
            "textStyle": {
                "color": "#696969",
                "fontSize": "16"
            }
        },
        "tooltip": {
            "axisPointer": {
                "lineStyle": {
                    "color": "#cccccc",
                    "width": 1,
                    "fontSize": "16"
                },
                "crossStyle": {
                    "color": "#cccccc",
                    "width": 1,
                    "fontSize": "16"
                }
            }
        },
        "timeline": {
            "lineStyle": {
                "color": "#4ea397",
                "width": 1,
                "fontSize": "16"
            },
            "itemStyle": {
                "normal": {
                    "color": "#4ea397",
                    "borderWidth": 1,
                    "fontSize": "16"
                },
                "emphasis": {
                    "color": "#4ea397",
                    "fontSize": "16"
                }
            },
            "controlStyle": {
                "normal": {
                    "color": "#4ea397",
                    "borderColor": "#4ea397",
                    "borderWidth": 0.5,
                    "fontSize": "16"
                },
                "emphasis": {
                    "color": "#4ea397",
                    "borderColor": "#4ea397",
                    "borderWidth": 0.5,
                    "fontSize": "16"
                }
            },
            "checkpointStyle": {
                "color": "#4ea397",
                "borderColor": "rgba(60,235,210,0.3)",
                "fontSize": "16"
            },
            "label": {
                "normal": {
                    "textStyle": {
                        "color": "#4ea397",
                        "fontSize": "16"
                    }
                },
                "emphasis": {
                    "textStyle": {
                        "color": "#4ea397",
                        "fontSize": "16"
                    }
                }
            }
        },
        "visualMap": {
            "color": [
                "#a40000",
                "#eb6100",
                "#f19149",
                "#facd89",
                "#b3d465"
            ]
        },
        "dataZoom": {
            "backgroundColor": "rgba(94,44,44,0)",
            "dataBackgroundColor": "rgba(222,222,222,1)",
            "fillerColor": "rgba(114,230,212,0.25)",
            "handleColor": "#cccccc",
            "handleSize": "100%",
            "textStyle": {
                "color": "#999999",
                "fontSize": "16"
            }
        },
        "markPoint": {
            "label": {
                "normal": {
                    "textStyle": {
                        "color": "#ffffff",
                        "fontSize": "16"
                    }
                },
                "emphasis": {
                    "textStyle": {
                        "color": "#ffffff",
                        "fontSize": "16"
                    }
                }
            }
        }
    });
}));
