package com.prineside.tdi2;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.enums.RequirementType;
import com.prineside.tdi2.enums.ResearchType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.managers.BasicLevelManager;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.StringFormatter;
/* loaded from: classes2.dex */
public class Requirement {

    /* renamed from: a */
    public static final String f8847a = StringFormatter.toRGB(MaterialColor.ORANGE.P500).toString();

    /* renamed from: b */
    public static final String f8848b = StringFormatter.toRGB(Color.WHITE).toString();

    /* renamed from: c */
    public static final StringBuilder f8849c = new StringBuilder();
    public String levelName;
    public int levelStars;
    public String openedLevelName;
    public int researchLevel;
    public ResearchType researchType;
    public String stageName;
    public int stageStars;
    public StatisticsType statisticsType;
    public double statisticsValue;
    public RequirementType type;

    /* renamed from: com.prineside.tdi2.Requirement$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C15731 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8850a;

        static {
            int[] iArr = new int[RequirementType.values().length];
            f8850a = iArr;
            try {
                iArr[RequirementType.ALL_TIME_STATISTIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8850a[RequirementType.OPENED_LEVEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8850a[RequirementType.STAGE_STARS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8850a[RequirementType.STARS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8850a[RequirementType.RESEARCH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public String getIconTextureName() {
        int i = C15731.f8850a[this.type.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "blank" : "icon-research" : "icon-star" : "icon-star-stack" : "icon-joystick" : "icon-statistics";
    }

    public static Requirement fromJson(JsonValue jsonValue) {
        Requirement requirement = new Requirement();
        RequirementType valueOf = RequirementType.valueOf(jsonValue.getString("type"));
        requirement.type = valueOf;
        int i = C15731.f8850a[valueOf.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            requirement.researchType = ResearchType.valueOf(jsonValue.getString("name"));
                            requirement.researchLevel = jsonValue.getInt("level");
                        }
                    } else {
                        requirement.levelName = jsonValue.getString("level");
                        requirement.levelStars = jsonValue.getInt("amount");
                    }
                } else {
                    requirement.stageName = jsonValue.getString("stage");
                    requirement.stageStars = jsonValue.getInt("amount");
                }
            } else {
                requirement.openedLevelName = jsonValue.getString("level");
            }
        } else {
            requirement.statisticsType = StatisticsType.valueOf(jsonValue.getString("name"));
            requirement.statisticsValue = jsonValue.getDouble("value");
        }
        return requirement;
    }

    public StringBuilder getFormattedValue() {
        BasicLevel level;
        StringBuilder stringBuilder = f8849c;
        stringBuilder.setLength(0);
        int i = C15731.f8850a[this.type.ordinal()];
        if (i != 1) {
            if (i != 3) {
                if (i == 4 && (level = Game.f8589i.basicLevelManager.getLevel(this.levelName)) != null) {
                    int gainedStars = Game.f8589i.basicLevelManager.getGainedStars(level);
                    int i2 = this.levelStars;
                    if (gainedStars >= i2) {
                        stringBuilder.append("[#").append(f8848b).append("]");
                        gainedStars = i2;
                    } else {
                        stringBuilder.append("[#").append(f8847a).append("]");
                    }
                    stringBuilder.append(gainedStars).append("[] / ").append(this.levelStars);
                }
            } else {
                BasicLevelManager basicLevelManager = Game.f8589i.basicLevelManager;
                int gainedStars2 = basicLevelManager.getGainedStars(basicLevelManager.getStage(this.stageName));
                int i3 = this.stageStars;
                if (gainedStars2 >= i3) {
                    stringBuilder.append("[#").append(f8848b).append("]");
                    gainedStars2 = i3;
                } else {
                    stringBuilder.append("[#").append(f8847a).append("]");
                }
                stringBuilder.append(gainedStars2).append("[] / ").append(this.stageStars);
            }
        } else {
            double allTime = Game.f8589i.statisticsManager.getAllTime(this.statisticsType);
            double d = this.statisticsValue;
            if (allTime >= d) {
                stringBuilder.append("[#").append(f8848b).append("]");
                allTime = d;
            } else {
                stringBuilder.append("[#").append(f8847a).append("]");
            }
            StatisticsType statisticsType = this.statisticsType;
            if (statisticsType != StatisticsType.PT && statisticsType != StatisticsType.PRT) {
                stringBuilder.append(StringFormatter.compactNumber(allTime, false)).append("[] / ").append(StringFormatter.compactNumber(this.statisticsValue, false));
            } else {
                stringBuilder.append(StringFormatter.digestTime((int) allTime)).append("[] / ").append(StringFormatter.digestTime((int) this.statisticsValue));
            }
        }
        return stringBuilder;
    }

    public StringBuilder getTitle(boolean z) {
        TowerType towerType;
        StringBuilder stringBuilder = f8849c;
        stringBuilder.setLength(0);
        int i = C15731.f8850a[this.type.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            Research researchInstance = Game.f8589i.researchManager.getResearchInstance(this.researchType);
                            if (researchInstance.isUnlocksTower()) {
                                towerType = researchInstance.getRelatedToTowerType();
                            } else {
                                towerType = null;
                            }
                            stringBuilder.append(researchInstance.getTitle());
                            if (towerType != null) {
                                stringBuilder.append(" (").append(Game.f8589i.towerManager.getFactory(towerType).getTitle()).append(')');
                            }
                        }
                    } else {
                        BasicLevel level = Game.f8589i.basicLevelManager.getLevel(this.levelName);
                        if (level != null) {
                            if (z) {
                                Game game = Game.f8589i;
                                stringBuilder.append(game.localeManager.i18n.format("requirement_title_STARS_colored", StringFormatter.toRGB(game.basicLevelManager.getStage(level.stageName).color), level.name));
                            } else {
                                stringBuilder.append(Game.f8589i.localeManager.i18n.format("requirement_title_STARS", level.name));
                            }
                        }
                    }
                } else {
                    BasicLevelStage stage = Game.f8589i.basicLevelManager.getStage(this.stageName);
                    if (z) {
                        stringBuilder.append(Game.f8589i.localeManager.i18n.format("requirement_title_STAGE_STARS_colored", StringFormatter.toRGB(stage.color), stage.name));
                    } else {
                        stringBuilder.append(Game.f8589i.localeManager.i18n.format("requirement_title_STAGE_STARS", stage.name));
                    }
                }
            } else {
                BasicLevel level2 = Game.f8589i.basicLevelManager.getLevel(this.openedLevelName);
                if (level2 != null) {
                    if (z) {
                        Game game2 = Game.f8589i;
                        stringBuilder.append(game2.localeManager.i18n.format("requirement_title_OPENED_LEVEL_colored", StringFormatter.toRGB(game2.basicLevelManager.getStage(level2.stageName).color), level2.name));
                    } else {
                        stringBuilder.append(Game.f8589i.localeManager.i18n.format("requirement_title_OPENED_LEVEL", level2.name));
                    }
                }
            }
        } else {
            stringBuilder.append(Game.f8589i.statisticsManager.getStatisticsTitle(this.statisticsType));
        }
        return stringBuilder;
    }

    public boolean isSatisfied() {
        int i = C15731.f8850a[this.type.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5 && Game.f8589i.researchManager.getResearchInstance(this.researchType).installedLevel >= this.researchLevel) {
                            return true;
                        }
                        return false;
                    }
                    BasicLevel level = Game.f8589i.basicLevelManager.getLevel(this.levelName);
                    if (level != null && Game.f8589i.basicLevelManager.getGainedStars(level) >= this.levelStars) {
                        return true;
                    }
                    return false;
                }
                if (Game.f8589i.basicLevelManager.getGainedStars(Game.f8589i.basicLevelManager.getStage(this.stageName)) >= this.stageStars) {
                    return true;
                }
                return false;
            }
            BasicLevel level2 = Game.f8589i.basicLevelManager.getLevel(this.openedLevelName);
            if (level2 == null) {
                return false;
            }
            return Game.f8589i.basicLevelManager.isOpened(level2);
        } else if (Game.f8589i.statisticsManager.getAllTime(this.statisticsType) >= this.statisticsValue) {
            return true;
        } else {
            return false;
        }
    }

    public void setType(RequirementType requirementType) {
        if (this.type == requirementType) {
            return;
        }
        this.type = requirementType;
        int i = C15731.f8850a[requirementType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5 && this.researchType == null) {
                            this.researchType = ResearchType.ROOT;
                        }
                    } else if (this.levelName == null) {
                        this.levelName = "0.1";
                    }
                } else if (this.stageName == null) {
                    this.stageName = Config.SITE_API_VERSION;
                }
            } else if (this.openedLevelName == null) {
                this.openedLevelName = "0.1";
            }
        } else if (this.statisticsType == null) {
            this.statisticsType = StatisticsType.WIP;
        }
    }

    public void toJson(Json json) {
        json.writeValue("type", this.type.name());
        int i = C15731.f8850a[this.type.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            json.writeValue("name", this.researchType.name());
                            json.writeValue("level", Integer.valueOf(this.researchLevel));
                            return;
                        }
                        return;
                    }
                    json.writeValue("level", this.levelName);
                    json.writeValue("amount", Integer.valueOf(this.levelStars));
                    return;
                }
                json.writeValue("stage", this.stageName);
                json.writeValue("amount", Integer.valueOf(this.stageStars));
                return;
            }
            json.writeValue("level", this.openedLevelName);
            return;
        }
        json.writeValue("name", this.statisticsType.name());
        json.writeValue("value", Double.valueOf(this.statisticsValue));
    }

    public Requirement() {
        setType(RequirementType.ALL_TIME_STATISTIC);
    }
}
