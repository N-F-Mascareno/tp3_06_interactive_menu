{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "angle": 0,
        "type": "Statechart",
        "id": "78749915-0da0-40a2-862f-9e8d94c7c68e",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "interactive_menu_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    in event Enter\n    in event Escape\n    in event Next\n    var speed: integer\n    var timer: integer\n    \n    in event OP_DISPLAY_MAIN\n    in event OP_DISPLAY_MENU1_MOTOR\n    in event OP_DISPLAY_MENU2_POWER\n    in event OP_DISPLAY_MENU2_SPEED\n    in event OP_DISPLAY_MENU2_SPIN\n    in event OP_DISPLAY_POWER_ON\n    in event OP_DISPLAY_POWER_OFF\n    in event OP_DISPLAY_SPEED\n    in event OP_DISPLAY_SPEED_UP\n    in event OP_DISPLAY_SPIN_LEFT\n    in event OP_DISPLAY_SPIN_RIGHT\n    in event OP_SET_POWER_ON\n    in event OP_SET_POWER_OFF\n    in event OP_SET_SPEED\n    in event OP_SET_SPIN_LEFT\n    in event OP_SET_SPIN_RIGHT\n    in event OP_TIMER_SET\n    in event OP_TIMER_DOWN\n    in event OP_DISPLAY_VARIABLE_SAVED\n"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 222.5,
          "y": 100
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "z": 8,
        "embeds": [
          "f70f632c-e54d-4002-9ec5-7baec620de10"
        ],
        "attrs": {}
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 222.5,
          "y": 115
        },
        "id": "f70f632c-e54d-4002-9ec5-7baec620de10",
        "z": 9,
        "parent": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -446,
          "y": 567
        },
        "size": {
          "width": 252.72500610351562,
          "height": 112
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "1c9da5f1-8e60-4d3a-ae11-520fd7e094d6",
        "z": 23,
        "embeds": [],
        "attrs": {
          "name": {
            "text": "ST_M1_Menu_2_Power",
            "fontSize": 12
          },
          "specification": {
            "text": "entry \n    /raise OP_DISPLAY_MENU2_POWER\n"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -544,
          "y": 873
        },
        "size": {
          "width": 222,
          "height": 112
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "f2e92d6f-9fef-4c5d-a0a9-70dda4415583",
        "z": 44,
        "embeds": [],
        "attrs": {
          "name": {
            "text": "ST_M1_Menu_3_Power_ON",
            "fontSize": 12
          },
          "specification": {
            "text": "entry\n/raise OP_DISPLAY_POWER_ON"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "1c9da5f1-8e60-4d3a-ae11-520fd7e094d6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 4,
              "dy": 32.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "f2e92d6f-9fef-4c5d-a0a9-70dda4415583",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 6,
              "dy": 73.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "b39bf493-318c-4bd9-aa82-2192e8248f01",
        "z": 45,
        "vertices": [
          {
            "x": -547,
            "y": 599.2
          },
          {
            "x": -630,
            "y": 792
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f2e92d6f-9fef-4c5d-a0a9-70dda4415583",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 3,
              "dy": 53.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "1c9da5f1-8e60-4d3a-ae11-520fd7e094d6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 4,
              "dy": 74.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {
              "distance": 0.5083427197097191,
              "offset": 30,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "62af20e7-02b0-4a83-a0b2-a6693f692ae0",
        "z": 45,
        "vertices": [
          {
            "x": -562,
            "y": 869
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": -222,
          "y": 873
        },
        "size": {
          "width": 222,
          "height": 112
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "97a3b8b6-a753-408c-b557-abd37e160613",
        "z": 46,
        "attrs": {
          "name": {
            "text": "ST_M1_Menu_3_Power_OFF",
            "fontSize": 12
          },
          "specification": {
            "text": "entry\n/raise OP_DISPLAY_POWER_OFF"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "f2e92d6f-9fef-4c5d-a0a9-70dda4415583"
        },
        "target": {
          "id": "97a3b8b6-a753-408c-b557-abd37e160613",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 2,
              "dy": 33.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "9fcff987-fc5d-45f8-8da2-ffc95b348512",
        "z": 47,
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "97a3b8b6-a753-408c-b557-abd37e160613"
        },
        "target": {
          "id": "1c9da5f1-8e60-4d3a-ae11-520fd7e094d6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 0,
              "dy": 96.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "4e47ce0e-2394-44a0-92f5-fd36a35dcbbf",
        "z": 47,
        "vertices": [
          {
            "x": -446,
            "y": 828
          },
          {
            "x": -496,
            "y": 756
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "97a3b8b6-a753-408c-b557-abd37e160613"
        },
        "target": {
          "id": "f2e92d6f-9fef-4c5d-a0a9-70dda4415583",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 216,
              "dy": 75.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "8a10a57a-30b3-459d-8f08-5861012be40b",
        "z": 47,
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 0,
          "y": 567
        },
        "size": {
          "width": 252.72500610351562,
          "height": 112
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "eeb9dce6-5856-41ff-805a-7ff0ca4cd127",
        "z": 50,
        "attrs": {
          "name": {
            "text": "ST_M1_Menu_2_Speed",
            "fontSize": 12
          },
          "specification": {
            "text": "entry\n    /raise OP_DISPLAY_MENU2_SPEED\n"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "1c9da5f1-8e60-4d3a-ae11-520fd7e094d6"
        },
        "target": {
          "id": "eeb9dce6-5856-41ff-805a-7ff0ca4cd127",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 12.5,
              "dy": 44.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "c887c44f-10ba-4b90-b6ee-3427a8f42d3a",
        "z": 51,
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": -44,
          "y": 415
        },
        "size": {
          "width": 252.72500610351562,
          "height": 82
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "60028514-de3d-4b12-ba18-e0649eccbfa1",
        "z": 52,
        "embeds": [],
        "attrs": {
          "name": {
            "text": "ST_M1_Menu_1",
            "fontSize": 12
          },
          "specification": {
            "text": "entry \n    /raise OP_DISPLAY_MENU1_MOTOR"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "eeb9dce6-5856-41ff-805a-7ff0ca4cd127"
        },
        "target": {
          "id": "60028514-de3d-4b12-ba18-e0649eccbfa1",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 92,
              "dy": 65,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "af1660d7-b5fe-47f3-bcf7-6e076d21f175",
        "z": 53,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1c9da5f1-8e60-4d3a-ae11-520fd7e094d6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 169,
              "dy": 6.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "60028514-de3d-4b12-ba18-e0649eccbfa1",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 13,
              "dy": 54,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "64abd764-6182-4bc3-a015-0b7861e0effb",
        "z": 53,
        "vertices": [
          {
            "x": -223,
            "y": 532
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "60028514-de3d-4b12-ba18-e0649eccbfa1"
        },
        "target": {
          "id": "1c9da5f1-8e60-4d3a-ae11-520fd7e094d6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 106,
              "dy": 9.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "69d66ef1-9aa7-4ab3-ab87-7ae5f2f94215",
        "z": 53,
        "vertices": [
          {
            "x": -230,
            "y": 456
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": -32,
          "y": 130
        },
        "size": {
          "width": 219.7375030517578,
          "height": 79
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "be43e06b-74fa-4936-bd73-5e9e2896ed96",
        "z": 54,
        "attrs": {
          "name": {
            "text": "ST_Main",
            "fontSize": 12
          },
          "specification": {
            "text": "entry \n    /raise OP_DISPLAY_MAIN"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
        },
        "target": {
          "id": "be43e06b-74fa-4936-bd73-5e9e2896ed96",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 93,
              "dy": -1.0000152587890625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "8b151750-86fb-4bd8-8986-1474999c1b23",
        "z": 55,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "be43e06b-74fa-4936-bd73-5e9e2896ed96"
        },
        "target": {
          "id": "60028514-de3d-4b12-ba18-e0649eccbfa1",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 96,
              "dy": 7.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "21911cbf-9501-4c48-bff4-601b5f49263f",
        "z": 55,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "60028514-de3d-4b12-ba18-e0649eccbfa1"
        },
        "target": {
          "id": "be43e06b-74fa-4936-bd73-5e9e2896ed96",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 43,
              "dy": 59,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {
              "distance": 0.4652777777777778,
              "offset": -41,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e2375ba9-b2c9-4ccb-960c-860f2afedfdf",
        "z": 56,
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 93,
          "y": 857
        },
        "size": {
          "width": 285.71250915527344,
          "height": 112
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "df5232d3-0798-4c04-be87-f997d55a0989",
        "z": 59,
        "embeds": [
          "72a9a18e-2361-4748-a134-2ca990a720aa",
          "f366778c-d517-4a72-8936-089bc4635551"
        ],
        "attrs": {
          "name": {
            "text": "ST_M1_Menu_3_Speed",
            "fontSize": 12
          },
          "specification": {
            "text": "entry[speed > 0 ]\n/raise OP_DISPLAY_SPEED_UP\nentry[speed == 0]\n/raise OP_DISPLAY_SPEED"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "eeb9dce6-5856-41ff-805a-7ff0ca4cd127"
        },
        "target": {
          "id": "df5232d3-0798-4c04-be87-f997d55a0989",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 98,
              "dy": 15.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter/speed=0"
              }
            },
            "position": {
              "distance": 0.8089887640449438,
              "offset": -49,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "cc038b83-1f90-46cf-84fa-afa7bb7e5c02",
        "z": 60,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "df5232d3-0798-4c04-be87-f997d55a0989"
        },
        "target": {
          "id": "df5232d3-0798-4c04-be87-f997d55a0989",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 222,
              "dy": 21,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next[speed < 9]/speed = speed + 1"
              }
            },
            "position": {
              "distance": 0.29646271364109783,
              "offset": 72.87304097993723,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "f366778c-d517-4a72-8936-089bc4635551",
        "z": 61,
        "parent": "df5232d3-0798-4c04-be87-f997d55a0989",
        "vertices": [
          {
            "x": 419,
            "y": 939
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "df5232d3-0798-4c04-be87-f997d55a0989",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 174,
              "dy": 110,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "df5232d3-0798-4c04-be87-f997d55a0989",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 38,
              "dy": 106,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next[speed ==9]/speed = 0"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "72a9a18e-2361-4748-a134-2ca990a720aa",
        "z": 62,
        "parent": "df5232d3-0798-4c04-be87-f997d55a0989",
        "vertices": [
          {
            "x": 171,
            "y": 1029
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 644,
          "y": 567
        },
        "size": {
          "width": 246.125,
          "height": 112
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "9be6e64f-05ed-4718-a441-f21321453566",
        "z": 63,
        "attrs": {
          "name": {
            "text": "ST_M1_Menu_2_Spin",
            "fontSize": 12
          },
          "specification": {
            "text": "entry\n    /raise OP_DISPLAY_MENU2_SPIN\n"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "eeb9dce6-5856-41ff-805a-7ff0ca4cd127"
        },
        "target": {
          "id": "9be6e64f-05ed-4718-a441-f21321453566",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 8.5,
              "dy": 42.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "0fa7085f-0d9b-441f-a470-b4bbcec6baca",
        "z": 64,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9be6e64f-05ed-4718-a441-f21321453566"
        },
        "target": {
          "id": "60028514-de3d-4b12-ba18-e0649eccbfa1",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 150,
              "dy": 56,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "fa202805-d7fb-4b1b-bb94-d64b901c3763",
        "z": 64,
        "vertices": [
          {
            "x": 207,
            "y": 538
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 1056,
          "y": 832
        },
        "size": {
          "width": 222,
          "height": 112
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "6989f179-a868-4616-8186-dd704d46d1a7",
        "z": 66,
        "attrs": {
          "name": {
            "text": "ST_M1_Menu_3_Spin_Right",
            "fontSize": 12
          },
          "specification": {
            "text": "entry\n/raise OP_DISPLAY_SPIN_RIGHT"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "df5232d3-0798-4c04-be87-f997d55a0989"
        },
        "target": {
          "id": "eeb9dce6-5856-41ff-805a-7ff0ca4cd127",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 102,
              "dy": 108.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {
              "distance": 0.21348314606741572,
              "offset": 24,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e82f27d4-a856-4b0e-a1cd-15369c1db4c9",
        "z": 69,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9be6e64f-05ed-4718-a441-f21321453566",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 3,
              "dy": 76.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "1c9da5f1-8e60-4d3a-ae11-520fd7e094d6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 9,
              "dy": 69.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next"
              }
            },
            "position": {
              "distance": 0.6066446062896405,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "a4ab9d31-ad68-4196-af00-96a0ec05ce4f",
        "z": 70,
        "vertices": [
          {
            "x": 584,
            "y": 765
          },
          {
            "x": -41,
            "y": 765
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 649.5,
          "y": 832
        },
        "size": {
          "width": 222,
          "height": 112
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "34520626-fc24-4346-a46a-ef8102a1a51e",
        "z": 71,
        "attrs": {
          "name": {
            "text": "ST_M1_Menu_3_Spin_Left",
            "fontSize": 12
          },
          "specification": {
            "text": "entry\n/raise OP_DISPLAY_SPIN_LEFT\n"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "6989f179-a868-4616-8186-dd704d46d1a7"
        },
        "target": {
          "id": "34520626-fc24-4346-a46a-ef8102a1a51e",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 201,
              "dy": 77.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "213c3787-ef76-4db3-9a66-5e8a733366d0",
        "z": 72,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "34520626-fc24-4346-a46a-ef8102a1a51e"
        },
        "target": {
          "id": "6989f179-a868-4616-8186-dd704d46d1a7",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 10,
              "dy": 37.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "481c3f39-b34c-424f-b836-6717005ad510",
        "z": 72,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9be6e64f-05ed-4718-a441-f21321453566"
        },
        "target": {
          "id": "34520626-fc24-4346-a46a-ef8102a1a51e",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 95.5,
              "dy": 24.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter"
              }
            },
            "position": {
              "distance": 0.565359477124183,
              "offset": 56,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "f31feedd-f3ed-4277-9caf-935d747e15ff",
        "z": 73,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "34520626-fc24-4346-a46a-ef8102a1a51e"
        },
        "target": {
          "id": "9be6e64f-05ed-4718-a441-f21321453566",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 144,
              "dy": 115.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {
              "distance": 0.4866490281312586,
              "offset": 24,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "dc2fa5ab-b6fa-46e5-a30a-fb77760d833b",
        "z": 74,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "6989f179-a868-4616-8186-dd704d46d1a7"
        },
        "target": {
          "id": "9be6e64f-05ed-4718-a441-f21321453566",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 204,
              "dy": 52.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "fda4e3e0-744a-45d0-8595-354cabb541d9",
        "z": 75,
        "vertices": [
          {
            "x": 960,
            "y": 619.2
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 1022,
          "y": 1113
        },
        "size": {
          "width": 876,
          "height": 183
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "70287a1a-799a-4aea-b74a-4d695a8757d8",
        "z": 100,
        "embeds": [
          "e5bfac52-72b4-48b8-99f2-5f4f23213d16"
        ],
        "attrs": {
          "name": {
            "text": "ST_M1_Variable_Saved",
            "fontSize": 12
          },
          "specification": {
            "text": "entry\n/raise OP_DISPLAY_VARIABLE_SAVED"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "34520626-fc24-4346-a46a-ef8102a1a51e"
        },
        "target": {
          "id": "70287a1a-799a-4aea-b74a-4d695a8757d8",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 2,
              "dy": 28,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter/timer = 3000"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e36ff579-d8e6-4a02-8db7-2bfa11f5b79b",
        "z": 101,
        "vertices": [
          {
            "x": 723,
            "y": 1128
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "97a3b8b6-a753-408c-b557-abd37e160613"
        },
        "target": {
          "id": "70287a1a-799a-4aea-b74a-4d695a8757d8",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 1,
              "dy": 105,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter/timer = 3000"
              }
            },
            "position": {
              "distance": 0.547710520894226,
              "offset": -17,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "34b376f0-c940-4c13-ab74-740ede3eba35",
        "z": 101,
        "vertices": [
          {
            "x": 418,
            "y": 1218
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "6989f179-a868-4616-8186-dd704d46d1a7"
        },
        "target": {
          "id": "70287a1a-799a-4aea-b74a-4d695a8757d8",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 204,
              "dy": 78.5650634765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter/timer = 3000"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "2793aa68-e000-4328-a228-8ccb59cfbb23",
        "z": 101,
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "70287a1a-799a-4aea-b74a-4d695a8757d8",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 62,
              "dy": 111.5650634765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "be43e06b-74fa-4936-bd73-5e9e2896ed96",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 12,
              "dy": 41,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[timer == 0]"
              }
            },
            "position": {
              "distance": 0.04250634024175994,
              "offset": -15.8426513671875,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "7f9cfa3a-a09b-44ec-a365-ce4200855162",
        "z": 101,
        "vertices": [
          {
            "x": -410,
            "y": 1346
          },
          {
            "x": -922,
            "y": 1315
          },
          {
            "x": -922,
            "y": 1099
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "70287a1a-799a-4aea-b74a-4d695a8757d8"
        },
        "target": {
          "id": "70287a1a-799a-4aea-b74a-4d695a8757d8",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 156,
              "dy": 106.5650634765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[timer > 0]/timer = timer - 1"
              }
            },
            "position": {
              "distance": 0.47597038339897246,
              "offset": 24,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e5bfac52-72b4-48b8-99f2-5f4f23213d16",
        "z": 101,
        "parent": "70287a1a-799a-4aea-b74a-4d695a8757d8",
        "vertices": [
          {
            "x": 1390,
            "y": 1409
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "df5232d3-0798-4c04-be87-f997d55a0989",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 204,
              "dy": 105,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "70287a1a-799a-4aea-b74a-4d695a8757d8",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 10,
              "dy": 51,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter/timer = 3000"
              }
            },
            "position": {
              "distance": 0.6049415552096828,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "4"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "070801b4-a6f3-4008-8fd7-d3241e16dd04",
        "z": 103,
        "vertices": [
          {
            "x": 344,
            "y": 1164
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f2e92d6f-9fef-4c5d-a0a9-70dda4415583"
        },
        "target": {
          "id": "70287a1a-799a-4aea-b74a-4d695a8757d8",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": -1,
              "dy": 161,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter/timer = 3000"
              }
            },
            "position": {
              "distance": 0.6205180249605459,
              "offset": 14,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "0f0864fa-74b8-488e-9b51-d8add7d0ed76",
        "z": 104,
        "vertices": [
          {
            "x": -370,
            "y": 1186
          },
          {
            "x": 851,
            "y": 1274
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 2114,
          "y": 573
        },
        "size": {
          "width": 252.72500610351562,
          "height": 112
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "27719505-5596-453d-afc6-e57e7e29fd8c",
        "z": 105,
        "attrs": {
          "name": {
            "text": "ST_M2_Menu_2_Power",
            "fontSize": 12
          },
          "specification": {
            "text": "entry\r\n    /raise OP_DISPLAY_MENU2_POWER\r\n"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 2016,
          "y": 879
        },
        "size": {
          "width": 222,
          "height": 112
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "2156123a-8051-4e85-a1d3-c5f37dec998b",
        "z": 106,
        "attrs": {
          "name": {
            "text": "ST_M2_Menu_3_Power_ON",
            "fontSize": 12
          },
          "specification": {
            "text": "entry\n/raise OP_DISPLAY_POWER_ON"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "27719505-5596-453d-afc6-e57e7e29fd8c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 4,
              "dy": 32.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "2156123a-8051-4e85-a1d3-c5f37dec998b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 6,
              "dy": 73.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "425b97fc-4673-4f10-b411-7cbeb72cc875",
        "z": 107,
        "vertices": [
          {
            "x": 2013,
            "y": 605.2
          },
          {
            "x": 1930,
            "y": 798
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "2156123a-8051-4e85-a1d3-c5f37dec998b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 3,
              "dy": 53.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "27719505-5596-453d-afc6-e57e7e29fd8c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 4,
              "dy": 74.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {
              "distance": 0.5083427197097191,
              "offset": 30,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "d93b7a1e-3991-410a-9fd0-42972d38266a",
        "z": 108,
        "vertices": [
          {
            "x": 1998,
            "y": 875
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 2338,
          "y": 879
        },
        "size": {
          "width": 222,
          "height": 112
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "cf69d8c7-c25f-4b57-91cc-4681a5dfeb5d",
        "z": 109,
        "attrs": {
          "name": {
            "text": "ST_M2_Menu_3_Power_OFF",
            "fontSize": 12
          },
          "specification": {
            "text": "entry\n/raise OP_DISPLAY_POWER_OFF"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "cf69d8c7-c25f-4b57-91cc-4681a5dfeb5d"
        },
        "target": {
          "id": "27719505-5596-453d-afc6-e57e7e29fd8c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 0,
              "dy": 96.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "b0fa52c0-0247-4b2e-b19a-60372b81f04c",
        "z": 110,
        "vertices": [
          {
            "x": 2114,
            "y": 834
          },
          {
            "x": 2064,
            "y": 762
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "2156123a-8051-4e85-a1d3-c5f37dec998b"
        },
        "target": {
          "id": "cf69d8c7-c25f-4b57-91cc-4681a5dfeb5d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 2,
              "dy": 33.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "c69720d4-98e9-41d5-9353-bc007c48efab",
        "z": 111,
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "cf69d8c7-c25f-4b57-91cc-4681a5dfeb5d"
        },
        "target": {
          "id": "2156123a-8051-4e85-a1d3-c5f37dec998b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 216,
              "dy": 75.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "ac211c18-405f-4356-a5a8-7aa9724063dd",
        "z": 112,
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 2516,
          "y": 421
        },
        "size": {
          "width": 252.72500610351562,
          "height": 82
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "a8d4dbf0-3ace-484b-adbd-4544a6b0920d",
        "z": 115,
        "attrs": {
          "name": {
            "text": "ST_M2_Menu_1",
            "fontSize": 12
          },
          "specification": {
            "text": "entry \n    /raise OP_DISPLAY_MENU1_MOTOR"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "27719505-5596-453d-afc6-e57e7e29fd8c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 169,
              "dy": 6.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "a8d4dbf0-3ace-484b-adbd-4544a6b0920d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 13,
              "dy": 54,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "d15800c3-9fd0-4a72-9160-30a43823522f",
        "z": 116,
        "vertices": [
          {
            "x": 2337,
            "y": 538
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "a8d4dbf0-3ace-484b-adbd-4544a6b0920d"
        },
        "target": {
          "id": "27719505-5596-453d-afc6-e57e7e29fd8c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 106,
              "dy": 9.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "f991545e-7367-49b3-8518-8835b92b35c7",
        "z": 117,
        "vertices": [
          {
            "x": 2318,
            "y": 483
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 2653,
          "y": 863
        },
        "size": {
          "width": 222,
          "height": 112
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "6eb95db0-b699-40a7-9001-c5ef2fa7d61d",
        "z": 119,
        "embeds": [
          "7607b9d3-cbb3-4506-9605-20da6772a864",
          "1f3e6d47-fef2-479d-952d-a89fc932438b"
        ],
        "attrs": {
          "name": {
            "text": "ST_M2_Menu_3_Speed",
            "fontSize": 12
          },
          "specification": {
            "text": "entry[speed > 0 ]\n/raise OP_DISPLAY_SPEED_UP\nentry[speed == 0]\n/raise OP_DISPLAY_SPEED"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "6eb95db0-b699-40a7-9001-c5ef2fa7d61d"
        },
        "target": {
          "id": "6eb95db0-b699-40a7-9001-c5ef2fa7d61d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 222,
              "dy": 21,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next[speed < 9]/speed = speed + 1"
              }
            },
            "position": {
              "distance": 0.38716211779622467,
              "offset": 19.807994564593557,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1f3e6d47-fef2-479d-952d-a89fc932438b",
        "z": 121,
        "vertices": [
          {
            "x": 2979,
            "y": 945
          }
        ],
        "parent": "6eb95db0-b699-40a7-9001-c5ef2fa7d61d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "6eb95db0-b699-40a7-9001-c5ef2fa7d61d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 174,
              "dy": 110,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "6eb95db0-b699-40a7-9001-c5ef2fa7d61d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 38,
              "dy": 106,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next[speed ==9]/speed = 0"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "7607b9d3-cbb3-4506-9605-20da6772a864",
        "z": 122,
        "vertices": [
          {
            "x": 2731,
            "y": 1035
          }
        ],
        "parent": "6eb95db0-b699-40a7-9001-c5ef2fa7d61d",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 3204,
          "y": 573
        },
        "size": {
          "width": 252.72500610351562,
          "height": 112
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "41bd1a37-5287-4df8-adb1-941a480e6512",
        "z": 123,
        "attrs": {
          "name": {
            "text": "ST_M2_Menu_2_Spin",
            "fontSize": 12
          },
          "specification": {
            "text": "entry\n    /raise OP_DISPLAY_MENU2_SPIN\n"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "41bd1a37-5287-4df8-adb1-941a480e6512"
        },
        "target": {
          "id": "a8d4dbf0-3ace-484b-adbd-4544a6b0920d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 150,
              "dy": 56,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "d516adae-6fea-4ca3-9cbd-81118920a058",
        "z": 125,
        "vertices": [
          {
            "x": 2767,
            "y": 544
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "41bd1a37-5287-4df8-adb1-941a480e6512",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 3,
              "dy": 76.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "27719505-5596-453d-afc6-e57e7e29fd8c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 9,
              "dy": 69.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next"
              }
            },
            "position": {
              "distance": 0.6066446062896405,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "6c25414b-5135-4586-8574-be5c63afe6aa",
        "z": 128,
        "vertices": [
          {
            "x": 3144,
            "y": 771
          },
          {
            "x": 2519,
            "y": 771
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "60028514-de3d-4b12-ba18-e0649eccbfa1"
        },
        "target": {
          "id": "a8d4dbf0-3ace-484b-adbd-4544a6b0920d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 1,
              "dy": 33.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next"
              }
            },
            "position": {
              "distance": 0.5118243243243243,
              "offset": 15.00001220703126,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "dffb5fce-9fad-4ef4-b2a9-e2a942b43dfe",
        "z": 137,
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "a8d4dbf0-3ace-484b-adbd-4544a6b0920d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 2,
              "dy": 22.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "60028514-de3d-4b12-ba18-e0649eccbfa1",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 184,
              "dy": 18,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next"
              }
            },
            "position": {
              "distance": 0.475770584089602,
              "offset": 15.473541259765625,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "9e118bff-d8c7-4686-a8e2-31b51048fe51",
        "z": 138,
        "vertices": [
          {
            "x": 1507,
            "y": 393
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 2507.5,
          "y": 567
        },
        "size": {
          "width": 252.72500610351562,
          "height": 112
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "800b4cd3-8bfa-4380-8a17-032cf0829d57",
        "z": 141,
        "attrs": {
          "name": {
            "text": "ST_M2_Menu_2_Speed",
            "fontSize": 12
          },
          "specification": {
            "text": "entry\n    /raise OP_DISPLAY_MENU2_SPEED\n"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "6eb95db0-b699-40a7-9001-c5ef2fa7d61d"
        },
        "target": {
          "id": "800b4cd3-8bfa-4380-8a17-032cf0829d57",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 102,
              "dy": 108.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {
              "distance": 0.21348314606741572,
              "offset": 24,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "940fac7a-2cd9-4027-9d87-36e7e2f0e2c9",
        "z": 142,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "27719505-5596-453d-afc6-e57e7e29fd8c"
        },
        "target": {
          "id": "800b4cd3-8bfa-4380-8a17-032cf0829d57",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 12.5,
              "dy": 44.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "f7374c0d-f9a7-4e2e-81f7-269e3bb2ee3e",
        "z": 142,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "800b4cd3-8bfa-4380-8a17-032cf0829d57"
        },
        "target": {
          "id": "41bd1a37-5287-4df8-adb1-941a480e6512",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 8.5,
              "dy": 42.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "bd45e779-6a2a-4621-a060-ca63a1e4b1c8",
        "z": 142,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "800b4cd3-8bfa-4380-8a17-032cf0829d57"
        },
        "target": {
          "id": "6eb95db0-b699-40a7-9001-c5ef2fa7d61d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 98,
              "dy": 15.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter/speed=0"
              }
            },
            "position": {
              "distance": 0.8089887640449438,
              "offset": -49,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "0d022e3a-4bc5-4efe-a732-32d2ca54da10",
        "z": 142,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "800b4cd3-8bfa-4380-8a17-032cf0829d57"
        },
        "target": {
          "id": "a8d4dbf0-3ace-484b-adbd-4544a6b0920d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 92,
              "dy": 65,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "78e84ff8-6a4f-47b2-bc35-5a4ad316f84c",
        "z": 142,
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 3204,
          "y": 873
        },
        "size": {
          "width": 222,
          "height": 112
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "8eb09fb6-6922-4e53-8119-53a586f5a291",
        "z": 143,
        "attrs": {
          "name": {
            "text": "ST_M2_Menu_3_Spin_Left",
            "fontSize": 12
          },
          "specification": {
            "text": "entry\n/raise OP_DISPLAY_SPIN_LEFT"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "41bd1a37-5287-4df8-adb1-941a480e6512"
        },
        "target": {
          "id": "8eb09fb6-6922-4e53-8119-53a586f5a291",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 95.5,
              "dy": 24.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter"
              }
            },
            "position": {
              "distance": 0.565359477124183,
              "offset": 56,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1e2efdce-c6f6-48c4-b7e9-1641bbe34971",
        "z": 144,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "8eb09fb6-6922-4e53-8119-53a586f5a291"
        },
        "target": {
          "id": "41bd1a37-5287-4df8-adb1-941a480e6512",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 144,
              "dy": 115.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {
              "distance": 0.4866490281312586,
              "offset": 24,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "994cf215-74a1-4f18-99ee-6671faf787a5",
        "z": 144,
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 3614,
          "y": 873
        },
        "size": {
          "width": 222,
          "height": 112
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "650d265f-9efb-42ed-8549-e373120eed76",
        "z": 147,
        "attrs": {
          "name": {
            "text": "ST_M2_Menu_3_Spin_Right",
            "fontSize": 12
          },
          "specification": {
            "text": "entry\n/raise OP_DISPLAY_SPIN_RIGHT"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "8eb09fb6-6922-4e53-8119-53a586f5a291"
        },
        "target": {
          "id": "650d265f-9efb-42ed-8549-e373120eed76",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 10,
              "dy": 37.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "c53882b8-9596-4ac7-a938-00c94b531ab3",
        "z": 148,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "650d265f-9efb-42ed-8549-e373120eed76"
        },
        "target": {
          "id": "41bd1a37-5287-4df8-adb1-941a480e6512",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 204,
              "dy": 52.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "d9467ca4-2c5a-4809-90f2-07035042f39e",
        "z": 148,
        "vertices": [
          {
            "x": 3520,
            "y": 625.2
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "650d265f-9efb-42ed-8549-e373120eed76"
        },
        "target": {
          "id": "8eb09fb6-6922-4e53-8119-53a586f5a291",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 201,
              "dy": 77.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "ab44892e-cfbf-4888-add0-fad759b79407",
        "z": 148,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "2156123a-8051-4e85-a1d3-c5f37dec998b"
        },
        "target": {
          "id": "70287a1a-799a-4aea-b74a-4d695a8757d8",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 873,
              "dy": 17,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter/timer = 3000"
              }
            },
            "position": {
              "distance": 0.7416053785611096,
              "offset": 12,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "febbb852-639e-4563-a7f1-04079e07cd42",
        "z": 149,
        "vertices": [
          {
            "x": 2006,
            "y": 1130
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "cf69d8c7-c25f-4b57-91cc-4681a5dfeb5d"
        },
        "target": {
          "id": "70287a1a-799a-4aea-b74a-4d695a8757d8",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 862,
              "dy": 54,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter/timer = 3000"
              }
            },
            "position": {
              "distance": 0.5041481622207383,
              "offset": 13,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1adebabe-6ae3-4e1b-a0b3-cd3a8039ddb8",
        "z": 150,
        "vertices": [
          {
            "x": 2109,
            "y": 1167
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "6eb95db0-b699-40a7-9001-c5ef2fa7d61d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 8,
              "dy": 101,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "70287a1a-799a-4aea-b74a-4d695a8757d8",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 870,
              "dy": 84,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter/timer = 3000"
              }
            },
            "position": {
              "distance": 0.49992643149418914,
              "offset": 8,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "4"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "18f2335d-31e7-493f-9b3a-01a6bf280e15",
        "z": 151,
        "vertices": [
          {
            "x": 2389,
            "y": 1197
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "8eb09fb6-6922-4e53-8119-53a586f5a291"
        },
        "target": {
          "id": "70287a1a-799a-4aea-b74a-4d695a8757d8",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 874,
              "dy": 119,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter/timer = 3000"
              }
            },
            "position": {
              "distance": 0.5811735549811324,
              "offset": 11,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "2bf507bd-658e-4d47-9804-ef82a8b09204",
        "z": 152,
        "vertices": [
          {
            "x": 3207,
            "y": 1167
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "650d265f-9efb-42ed-8549-e373120eed76"
        },
        "target": {
          "id": "70287a1a-799a-4aea-b74a-4d695a8757d8",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 870,
              "dy": 157,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter/timer = 3000"
              }
            },
            "position": {
              "distance": 0.5071150080919254,
              "offset": 14,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "fc2ed487-c300-48b8-9648-a7c044f7533c",
        "z": 153,
        "vertices": [
          {
            "x": 1997,
            "y": 1270
          }
        ],
        "attrs": {}
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "MyFirstStatechart",
          "statemachinePrefix": "myFirstStatechart",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": "",
          "exitState": "",
          "generic": ""
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}