SMODS.Atlas{
    key = "jokers",
    path = "jokers.png",
    px = 71,
    py = 95
}

SMODS.Joker{
    key = "position",
    config = {
        extra = {
            chips = 50
        }
    },
    atlas = "jokers",
    pos = {
        x = 0,
        y = 0
    },
    rarity = 1,
    cost = 3,
    blueprint_compat = true,
    perishable_compat = true,
    eternal_compat = true,
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips
            }
        }
    end,
    calculate = function (self, card, context)
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end
    end,
}

SMODS.Joker{
    key = "velocity",
    config = {
        extra = {
            chips = 25,
            chipgain = 25,
        }
    },
    atlas = "jokers",
    pos = {
        x = 1,
        y = 0
    },
    rarity = 2,
    cost = 6,
    blueprint_compat = true,
    perishable_compat = false,
    eternal_compat = true,
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips,
                card.ability.extra.chipgain
            }
        }
    end,
    calculate = function (self, card, context)
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end

        if context.end_of_round and context.main_eval and not context.blueprint then
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chips",
                ref_value = "chipgain"
            })
            return nil,true
        end
    end,
}

SMODS.Joker{
    key = "acceleration",
    config = {
        extra = {
            chips = 10,
            chipgain = 10,
            chipgaingain = 10,
        }
    },
    atlas = "jokers",
    pos = {
        x = 2,
        y = 0
    },
    rarity = 2,
    cost = 9,
    blueprint_compat = true,
    perishable_compat = false,
    eternal_compat = true,
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips,
                card.ability.extra.chipgaingain
            }
        }
    end,
    calculate = function (self, card, context)
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end

        if context.end_of_round and context.main_eval and not context.blueprint then
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chips",
                ref_value = "chipgain",
                no_message = true
            })
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chipgain",
                ref_value = "chipgaingain",
            })
            return nil, true
        end
    end,
}

SMODS.Joker{
    key = "jerk",
    config = {
        extra = {
            chips = 5,
            chipgain = 5,
            chipgaingain = 5,
            chipgaingaingain = 5,
        }
    },
    atlas = "jokers",
    pos = {
        x = 3,
        y = 0
    },
    rarity = 3,
    cost = 11,
    blueprint_compat = true,
    perishable_compat = false,
    eternal_compat = true,
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips,
                card.ability.extra.chipgaingaingain
            }
        }
    end,
    calculate = function (self, card, context)
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end

        if context.end_of_round and context.main_eval and not context.blueprint then
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chips",
                ref_value = "chipgain",
                no_message = true
            })
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chipgain",
                ref_value = "chipgaingain",
                no_message = true
            })
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chipgaingain",
                ref_value = "chipgaingaingain",
            })
            return nil, true
        end
    end,
}

SMODS.Joker{
    key = "snap",
    config = {
        extra = {
            chips = 2,
            chipgain = 2,
            chipgaingain = 2,
            chipgaingaingain = 2,
            chipgaingaingaingain = 2
        }
    },
    atlas = "jokers",
    pos = {
        x = 4,
        y = 0
    },
    rarity = 3,
    cost = 13,
    blueprint_compat = true,
    perishable_compat = false,
    eternal_compat = true,
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips,
                card.ability.extra.chipgaingaingaingain
            }
        }
    end,
    calculate = function (self, card, context)
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end

        if context.end_of_round and context.main_eval and not context.blueprint then
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chips",
                ref_value = "chipgain",
                no_message = true
            })
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chipgain",
                ref_value = "chipgaingain",
                no_message = true
            })
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chipgaingain",
                ref_value = "chipgaingaingain",
                no_message = true,
            })
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chipgaingaingain",
                ref_value = "chipgaingaingaingain",
            })
            return nil, true
        end
    end,
}

SMODS.Joker{
    key = "crackle",
    config = {
        extra = {
            chips = 1,
            chipgain = 1,
            chipgaingain = 1,
            chipgaingaingain = 1,
            chipgaingaingaingain = 1,
            chipgaingaingaingaingain = 1,
        }
    },
    atlas = "jokers",
    pos = {
        x = 5,
        y = 0
    },
    rarity = 3,
    cost = 16,
    blueprint_compat = true,
    perishable_compat = false,
    eternal_compat = true,
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips,
                card.ability.extra.chipgaingaingaingaingain
            }
        }
    end,
    calculate = function (self, card, context)
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end

        if context.end_of_round and context.main_eval and not context.blueprint then
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chips",
                ref_value = "chipgain",
                no_message = true
            })
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chipgain",
                ref_value = "chipgaingain",
                no_message = true
            })
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chipgaingain",
                ref_value = "chipgaingaingain",
                no_message = true,
            })
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chipgaingaingain",
                ref_value = "chipgaingaingaingain",
                no_message = true,
            })
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chipgaingaingaingain",
                ref_value = "chipgaingaingaingaingain",
            })
            return nil, true
        end
    end,
}

SMODS.Joker{
    key = "pop",
    config = {
        extra = {
            chips = 1,
            chipgain = 1,
            chipgaingain = 1,
            chipgaingaingain = 1,
            chipgaingaingaingain = 1,
            chipgaingaingaingaingain = 1,
            chipgaingaingaingaingaingain = 1,
        }
    },
    atlas = "jokers",
    pos = {
        x = 7,
        y = 0
    },
    soul_pos = {
        x = 6,
        y = 0
    },
    rarity = 4,
    cost = 20,
    blueprint_compat = true,
    perishable_compat = false,
    eternal_compat = true,
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips,
                card.ability.extra.chipgaingaingaingaingaingain
            }
        }
    end,
    calculate = function (self, card, context)
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end

        if context.end_of_round and context.main_eval and not context.blueprint then
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chips",
                ref_value = "chipgain",
                no_message = true
            })
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chipgain",
                ref_value = "chipgaingain",
                no_message = true
            })
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chipgaingain",
                ref_value = "chipgaingaingain",
                no_message = true,
            })
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chipgaingaingain",
                ref_value = "chipgaingaingaingain",
                no_message = true,
            })
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chipgaingaingaingain",
                ref_value = "chipgaingaingaingaingain",
                no_message = true,
            })
            SMODS.scale_card(card, {
                scalar_table = card.ability.extra,
                scalar_value = "chipgaingaingaingaingain",
                ref_value = "chipgaingaingaingaingaingain",
            })
            return nil, true
        end
    end,
}

