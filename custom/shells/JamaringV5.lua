if not Config.Shells.JamaringV5 then return end

CreateThread(function()
    local JamaringV5 = {
        ['jamaring_v5_1a'] = {
            label = 'jamaring_v5_1a',
            hash = `jamaring_v5_1a`,
            doorOffset = { x = 0.495117, y = -0.059082, z = 0.999947, h = 273.990967, width = 2.0 },
            stash = {
                maxweight = 8000000,
                slots = 120,
            },
            imgs = {
                {
                    url = 'https://r2.fivemanage.com/NmXl928isHcRzikCZxrdo/images/Screenshot_1.png',
                },
            }
        },

        ['jamaring_v5_1b'] = {
            label = 'jamaring_v5_1b',
            hash = `jamaring_v5_1b`,
            doorOffset = { x = 0.495117, y = -0.059082, z = 0.999947, h = 273.990967, width = 2.0 },
            stash = {
                maxweight = 8000000,
                slots = 120,
            },
            imgs = {
                {
                    url = 'https://r2.fivemanage.com/NmXl928isHcRzikCZxrdo/images/Screenshot_3.png',
                },
            }
        },

        ['jamaring_v5_2a'] = {
            label = 'jamaring_v5_2a',
            hash = `jamaring_v5_2a`,
            doorOffset = { x = -0.020630, y = -0.061981, z = 1.000938, h = 276.064697, width = 2.0 },
            stash = {
                maxweight = 8000000,
                slots = 120,
            },
            imgs = {
                {
                    url = 'https://r2.fivemanage.com/NmXl928isHcRzikCZxrdo/images/Screenshot_5.png',
                },
            }
        },

        ['jamaring_v5_2b'] = {
            label = 'jamaring_v5_2b',
            hash = `jamaring_v5_2b`,
            doorOffset = { x = -0.020630, y = -0.061981, z = 1.000938, h = 276.064697, width = 2.0 },
            stash = {
                maxweight = 8000000,
                slots = 120,
            },
            imgs = {
                {
                    url = 'https://r2.fivemanage.com/NmXl928isHcRzikCZxrdo/images/Screenshot_8.png',
                },
            }
        },

        ['jamaring_v5_3a'] = {
            label = 'jamaring_v5_3a',
            hash = `jamaring_v5_3a`,
            doorOffset = { x = -0.481995, y = -0.027405, z = 1.000946, h = 267.873352, width = 2.0 },
            stash = {
                maxweight = 8000000,
                slots = 120,
            },
            imgs = {
                {
                    url = 'https://r2.fivemanage.com/NmXl928isHcRzikCZxrdo/images/Screenshot_10.png',
                },

            }
        },

        ['jamaring_v5_3b'] = {
            label = 'jamaring_v5_3b',
            hash = `jamaring_v5_3b`,
            doorOffset = { x = -0.481995, y = -0.027405, z = 1.000946, h = 267.873352, width = 2.0 },
            stash = {
                maxweight = 8000000,
                slots = 120,
            },
            imgs = {
                {
                    url = 'https://r2.fivemanage.com/NmXl928isHcRzikCZxrdo/images/Screenshot_11.png',
                },
            }
        },

        ['jamaring_v5_4a'] = {
            label = 'jamaring_v5_4a',
            hash = `jamaring_v5_4a`,
            doorOffset = { x = 0.548706, y = -0.130981, z = 1.000969, h = 269.007996, width = 2.0 },
            stash = {
                maxweight = 8000000,
                slots = 120,
            },
            imgs = {
                {
                    url = 'https://r2.fivemanage.com/NmXl928isHcRzikCZxrdo/images/Screenshot_13.png',
                },
            }
        },

        ['jamaring_v5_4b'] = {
            label = 'jamaring_v5_4b',
            hash = `jamaring_v5_4b`,
            doorOffset = { x = 0.548706, y = -0.130981, z = 1.000969, h = 269.007996, width = 2.0 },
            stash = {
                maxweight = 8000000,
                slots = 120,
            },
            imgs = {
                {
                    url = 'https://r2.fivemanage.com/NmXl928isHcRzikCZxrdo/images/Screenshot_15.png',
                },

            }
        },

        ['jamaring_v5_5a'] = {
            label = 'jamaring_v5_5a',
            hash = `jamaring_v5_5a`,
            doorOffset = { x = 0.596558, y = -0.005585, z = 1.000374, h = 268.280426, width = 2.0 },
            stash = {
                maxweight = 8000000,
                slots = 120,
            },
            imgs = {
                {
                    url = 'https://r2.fivemanage.com/NmXl928isHcRzikCZxrdo/images/Screenshot_17.png',
                },

            }
        },

        ['jamaring_v5_5b'] = {
            label = 'jamaring_v5_5b',
            hash = `jamaring_v5_5b`,
            doorOffset = { x = 0.596558, y = -0.005585, z = 1.000374, h = 268.280426, width = 2.0 },
            stash = {
                maxweight = 8000000,
                slots = 120,
            },
            imgs = {
                {
                    url = 'https://r2.fivemanage.com/NmXl928isHcRzikCZxrdo/images/Screenshot_19.png',
                },
            }
        },
    }

    InsertInteriors(JamaringV5, "Jamaring V5")
end)