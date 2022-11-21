package com.prineside.tdi2.screens;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.actions.DelayAction;
import com.badlogic.gdx.scenes.scene2d.actions.MoveToAction;
import com.badlogic.gdx.scenes.scene2d.actions.ScaleToAction;
import com.badlogic.gdx.scenes.scene2d.p033ui.Cell;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.SnapshotArray;
import com.prineside.tdi2.BasicLevel;
import com.prineside.tdi2.BasicLevelQuestConfig;
import com.prineside.tdi2.BasicLevelStage;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Requirement;
import com.prineside.tdi2.Research;
import com.prineside.tdi2.Resource;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Screen;
import com.prineside.tdi2.enums.BossType;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RequirementType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.LeaderBoardManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.LimitedWidthLabel;
import com.prineside.tdi2.p036ui.actors.PaddedImageButton;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.shared.AbilitySelectionOverlay;
import com.prineside.tdi2.screens.LevelSelectScreen;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.tiles.SourceTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.StringFormatter;
import java.util.Comparator;
import java.util.Iterator;
import p218x1.C7221i;
/* loaded from: classes2.dex */
public class LevelSelectScreen extends Screen {

    /* renamed from: o */
    public static final Color f10715o = MaterialColor.GREY.P800;

    /* renamed from: p */
    public static final Color f10716p = MaterialColor.GREY.P900;

    /* renamed from: q */
    public static final Color f10717q = MaterialColor.GREY.P700;

    /* renamed from: r */
    public static final Color f10718r = MaterialColor.GREEN.P600;

    /* renamed from: s */
    public static final Color f10719s = MaterialColor.GREEN.P900;

    /* renamed from: t */
    public static final Color f10720t = MaterialColor.BLUE_GREY.P500;

    /* renamed from: u */
    public static final Color f10721u = MaterialColor.BLUE_GREY.P600;

    /* renamed from: v */
    public static final Color f10722v = MaterialColor.BLUE_GREY.P400;

    /* renamed from: w */
    public static final Color f10723w = MaterialColor.YELLOW.P500;

    /* renamed from: x */
    public static final Color f10724x = MaterialColor.YELLOW.P600;

    /* renamed from: y */
    public static final Color f10725y = MaterialColor.YELLOW.P400;

    /* renamed from: a */
    public Label.LabelStyle f10726a;

    /* renamed from: b */
    public Label.LabelStyle f10727b;

    /* renamed from: c */
    public Label.LabelStyle f10728c;

    /* renamed from: d */
    public Label.LabelStyle f10729d;

    /* renamed from: e */
    public Group f10730e;

    /* renamed from: f */
    public ScrollPane f10731f;

    /* renamed from: g */
    public ParticleEffectPool f10732g;

    /* renamed from: h */
    public LevelMenuOverlay f10733h;

    /* renamed from: i */
    public ObjectMap<String, LevelElement> f10734i;

    /* renamed from: j */
    public boolean f10735j;

    /* renamed from: k */
    public final UiManager.UiLayer f10736k;

    /* renamed from: l */
    public final UiManager.UiLayer f10737l;

    /* renamed from: m */
    public final UiManager.UiLayer f10738m;

    /* renamed from: n */
    public final ObjectRetriever<LeaderBoardManager.BasicLevelsTopLeaderboards> f10739n;

    /* loaded from: classes2.dex */
    public class LevelElement extends Group {

        /* renamed from: M */
        public BasicLevel f10744M;

        /* renamed from: N */
        public boolean f10745N = false;

        /* renamed from: O */
        public boolean f10746O = false;

        /* renamed from: P */
        public Image f10747P;

        /* renamed from: Q */
        public Image f10748Q;

        /* renamed from: R */
        public Group f10749R;

        public LevelElement(final BasicLevel basicLevel, boolean z) {
            Requirement[] requirementArr;
            boolean z2;
            boolean z3;
            setTransform(false);
            BasicLevelStage stage = Game.f8589i.basicLevelManager.getStage(basicLevel.stageName);
            this.f10744M = basicLevel;
            setSize(320.0f, 240.0f);
            boolean isOpened = Game.f8589i.basicLevelManager.isOpened(basicLevel);
            if (!z) {
                setName("level_select_level_" + basicLevel.name);
            }
            if (z) {
                Actor image = new Image(Game.f8589i.assetManager.getDrawable("ui-level-selection-thumb-shadow-right"));
                image.setSize(14.0f, 216.0f);
                image.setPosition(320.0f, -14.0f);
                addActor(image);
                Actor image2 = new Image(Game.f8589i.assetManager.getDrawable("ui-level-selection-thumb-shadow-bottom"));
                image2.setSize(284.0f, 14.0f);
                image2.setPosition(36.0f, -14.0f);
                addActor(image2);
            } else {
                Actor image3 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                image3.setColor(0.0f, 0.0f, 0.0f, 0.56f);
                image3.setSize(320.0f, 240.0f);
                image3.setPosition(10.0f, -10.0f);
                addActor(image3);
            }
            Image image4 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            this.f10747P = image4;
            image4.setSize(320.0f, 240.0f);
            addActor(this.f10747P);
            Actor image5 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            image5.setSize(310.0f, 230.0f);
            Color color = Config.BACKGROUND_COLOR;
            image5.setColor(color);
            image5.setPosition(5.0f, 5.0f);
            addActor(image5);
            Actor image6 = new Image(basicLevel.getPreview());
            image6.setSize(310.0f, 230.0f);
            image6.setPosition(5.0f, 5.0f);
            addActor(image6);
            Actor image7 = new Image(Game.f8589i.assetManager.getDrawable("ui-level-selection-thumb-inner-shadow"));
            image7.setSize(310.0f, 185.0f);
            image7.setPosition(5.0f, 5.0f);
            addActor(image7);
            if (!isOpened) {
                Actor image8 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                image8.setSize(310.0f, 230.0f);
                image8.setPosition(5.0f, 5.0f);
                image8.setColor(color);
                image8.getColor().f3889a = 0.9f;
                addActor(image8);
            }
            if (isOpened && !Game.f8589i.basicLevelManager.playedBefore(basicLevel)) {
                Actor image9 = new Image(Game.f8589i.assetManager.getDrawable("ui-level-selection-new-level-tag"));
                image9.setSize(92.0f, 92.0f);
                image9.setPosition(228.0f, 148.0f);
                addActor(image9);
            }
            Table table = new Table();
            table.setPosition(16.0f, 18.0f);
            table.setSize(304.0f, 26.0f);
            addActor(table);
            String str = basicLevel.name;
            ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(36);
            Color color2 = Color.WHITE;
            Label label = new Label(str, new Label.LabelStyle(font, color2));
            table.add((Table) label).bottom().left();
            if (basicLevel.isBonus) {
                table.add((Table) new Label("bonus", new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), MaterialColor.AMBER.P500))).bottom().left().padLeft(8.0f).padBottom(4.0f);
            }
            table.add().expandX().fillX();
            if (!isOpened) {
                label.setColor(1.0f, 1.0f, 1.0f, 0.2f);
            }
            if (isOpened) {
                int gainedStars = Game.f8589i.basicLevelManager.getGainedStars(basicLevel);
                Actor image10 = new Image(Game.f8589i.assetManager.getDrawable("icon-star"));
                image10.setSize(32.0f, 32.0f);
                image10.setPosition(202.0f, 21.0f);
                if (gainedStars >= 3) {
                    image10.setColor(stage.color);
                } else {
                    image10.setColor(1.0f, 1.0f, 1.0f, 0.14f);
                }
                addActor(image10);
                Actor image11 = new Image(Game.f8589i.assetManager.getDrawable("icon-star"));
                image11.setSize(32.0f, 32.0f);
                image11.setPosition(236.0f, 21.0f);
                if (gainedStars >= 2) {
                    image11.setColor(stage.color);
                } else {
                    image11.setColor(1.0f, 1.0f, 1.0f, 0.14f);
                }
                addActor(image11);
                Actor image12 = new Image(Game.f8589i.assetManager.getDrawable("icon-star"));
                image12.setSize(32.0f, 32.0f);
                image12.setPosition(270.0f, 21.0f);
                if (gainedStars >= 1) {
                    image12.setColor(stage.color);
                } else {
                    image12.setColor(1.0f, 1.0f, 1.0f, 0.14f);
                }
                addActor(image12);
                Label label2 = new Label(StringFormatter.commaSeparatedNumber(basicLevel.maxScore), new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color2));
                label2.setSize(100.0f, 20.0f);
                label2.setPosition(200.0f, 90.0f);
                label2.setAlignment(20);
                addActor(label2);
                Label label3 = new Label(String.valueOf(basicLevel.maxReachedWave), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color2));
                label3.setSize(62.0f, 20.0f);
                label3.setPosition(200.0f, 56.0f);
                label3.setAlignment(20);
                addActor(label3);
                Actor image13 = new Image(Game.f8589i.assetManager.getDrawable("icon-wave"));
                image13.setSize(32.0f, 32.0f);
                image13.setPosition(270.0f, 55.0f);
                addActor(image13);
                Group group = new Group();
                this.f10749R = group;
                group.setSize(160.0f, 240.0f);
                this.f10749R.setTransform(false);
                this.f10749R.setVisible(false);
                addActor(this.f10749R);
            } else {
                Table table2 = new Table();
                table2.setFillParent(true);
                addActor(table2);
                int i = 0;
                while (true) {
                    Array<Requirement> array = basicLevel.openRequirements;
                    if (i >= array.size) {
                        break;
                    }
                    Requirement requirement = array.get(i);
                    if (requirement.type == RequirementType.STAGE_STARS) {
                        Table table3 = new Table();
                        BasicLevelStage stage2 = Game.f8589i.basicLevelManager.getStage(requirement.stageName);
                        int gainedStars2 = Game.f8589i.basicLevelManager.getGainedStars(stage2);
                        Label label4 = new Label(gainedStars2 + " / ", new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), Color.WHITE));
                        if (requirement.stageStars > gainedStars2) {
                            label4.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                        } else {
                            label4.setColor(stage2.color);
                        }
                        table3.add((Table) label4);
                        table3.add((Table) new Label(String.valueOf(requirement.stageStars), new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), stage2.color)));
                        Image image14 = new Image(Game.f8589i.assetManager.getDrawable("icon-star-stack"));
                        image14.setColor(stage2.color);
                        table3.add((Table) image14).size(48.0f).padLeft(8.0f);
                        table2.add(table3).padBottom(8.0f).row();
                    }
                    i++;
                }
                Table table4 = new Table();
                int i2 = 0;
                while (true) {
                    Array<Requirement> array2 = basicLevel.openRequirements;
                    if (i2 >= array2.size) {
                        break;
                    }
                    Requirement requirement2 = array2.get(i2);
                    if (requirement2.type != RequirementType.STAGE_STARS) {
                        Image image15 = new Image(Game.f8589i.assetManager.getDrawable(requirement2.getIconTextureName()));
                        table4.add((Table) image15).size(32.0f).padLeft(4.0f).padRight(4.0f);
                        if (requirement2.isSatisfied()) {
                            image15.setColor(stage.color);
                        } else {
                            image15.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                        }
                    }
                    i2++;
                }
                if (table4.hasChildren()) {
                    table2.add(table4).padBottom(8.0f).row();
                }
                Table table5 = new Table();
                int i3 = 0;
                while (true) {
                    int[] iArr = basicLevel.priceInResources;
                    if (i3 >= iArr.length) {
                        break;
                    }
                    if (iArr[i3] > 0) {
                        Image image16 = new Image(Game.f8589i.assetManager.getDrawable(Resource.TEXTURE_REGION_NAMES[i3]));
                        table5.add((Table) image16).size(32.0f).padLeft(4.0f).padRight(4.0f);
                        if (basicLevel.priceInResources[i3] > Game.f8589i.progressManager.getResources(ResourceType.values[i3])) {
                            image16.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                        } else {
                            image16.setColor(stage.color);
                        }
                    }
                    i3++;
                }
                if (basicLevel.priceInMoney > 0) {
                    Image image17 = new Image(Game.f8589i.assetManager.getDrawable("icon-money"));
                    table5.add((Table) image17).size(32.0f).padLeft(4.0f).padRight(4.0f);
                    if (basicLevel.priceInMoney > Game.f8589i.progressManager.getGreenPapers()) {
                        image17.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                    } else {
                        image17.setColor(stage.color);
                    }
                }
                table2.add(table5);
                Array<Research> instances = Game.f8589i.researchManager.getInstances();
                int i4 = 0;
                loop5: while (true) {
                    if (i4 >= instances.size) {
                        break;
                    }
                    Research research = instances.items[i4];
                    if (research.isUnlocksTower() && research.installedLevel == 0) {
                        for (Requirement requirement3 : research.levels[0].requirements) {
                            if (requirement3.type == RequirementType.OPENED_LEVEL && requirement3.openedLevelName.equals(basicLevel.name)) {
                                Actor createImage = Game.f8589i.towerManager.getFactory(research.relatedToTowerType).getShadowTextures().first().createImage(238.0f, -14.0f, 96.0f);
                                createImage.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                                addActor(createImage);
                                Actor image18 = new Image(Game.f8589i.towerManager.getFactory(research.relatedToTowerType).getIconTexture());
                                image18.setSize(96.0f, 96.0f);
                                image18.setPosition(238.0f, -14.0f);
                                addActor(image18);
                                break loop5;
                            }
                        }
                        continue;
                    }
                    i4++;
                }
                Actor image19 = new Image(Game.f8589i.assetManager.getDrawable("icon-lock-vertical"));
                image19.setSize(48.0f, 48.0f);
                image19.setPosition(141.0f, -17.0f);
                image19.setColor(0.0f, 0.0f, 0.0f, 0.56f);
                addActor(image19);
                Image image20 = new Image(Game.f8589i.assetManager.getDrawable("icon-lock-vertical"));
                this.f10748Q = image20;
                image20.setSize(48.0f, 48.0f);
                this.f10748Q.setPosition(136.0f, -12.0f);
                addActor(this.f10748Q);
            }
            if (!z) {
                int i5 = 0;
                while (true) {
                    Array<String> array3 = Game.f8589i.authManager.xpPlayedLevels;
                    if (i5 < array3.size) {
                        if (array3.items[i5].equals(basicLevel.name)) {
                            z2 = true;
                            break;
                        }
                        i5++;
                    } else {
                        z2 = false;
                        break;
                    }
                }
                int i6 = 0;
                while (true) {
                    Array<String> array4 = Game.f8589i.authManager.localXpPlayedLevels;
                    if (i6 < array4.size) {
                        if (array4.items[i6].equals(basicLevel.name)) {
                            z3 = true;
                            break;
                        }
                        i6++;
                    } else {
                        z3 = z2;
                        break;
                    }
                }
                boolean equals = basicLevel.name.equals(Game.f8589i.authManager.bonusXpLevel);
                if (z3) {
                    Actor quadActor = new QuadActor(MaterialColor.ORANGE.P800.cpy().mul(1.0f, 1.0f, 1.0f, 0.28f), new float[]{0.0f, 0.0f, 0.0f, 32.0f, 100.0f, 32.0f, 92.0f, 0.0f});
                    quadActor.setPosition(5.0f, 58.0f);
                    addActor(quadActor);
                    Actor label5 = new Label("-" + MathUtils.round((1.0f - Game.f8589i.authManager.playedLevelXpCoeff) * 100.0f) + "% XP", Game.f8589i.assetManager.getLabelStyle(21));
                    label5.setColor(MaterialColor.ORANGE.P500);
                    label5.setPosition(16.0f, 58.0f);
                    label5.setSize(90.0f, 32.0f);
                    addActor(label5);
                } else if (equals) {
                    Actor quadActor2 = new QuadActor(MaterialColor.LIGHT_GREEN.P800.cpy().mul(1.0f, 1.0f, 1.0f, 0.4f), new float[]{0.0f, 0.0f, 0.0f, 32.0f, 100.0f, 32.0f, 92.0f, 0.0f});
                    quadActor2.setPosition(5.0f, 58.0f);
                    addActor(quadActor2);
                    Actor label6 = new Label("+" + MathUtils.round((Game.f8589i.authManager.bonusLevelXpCoeff - 1.0f) * 100.0f) + "% XP", Game.f8589i.assetManager.getLabelStyle(21));
                    Color color3 = Color.WHITE;
                    label6.setColor(color3);
                    label6.setPosition(16.0f, 58.0f);
                    label6.setSize(90.0f, 32.0f);
                    label6.addAction(Actions.forever(Actions.sequence(Actions.color(color3, 0.6f), Actions.color(MaterialColor.LIGHT_GREEN.P500, 0.6f))));
                    addActor(label6);
                }
            }
            if (!z) {
                setTouchable(Touchable.enabled);
                addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.LevelSelectScreen.LevelElement.1
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
                    public void enter(InputEvent inputEvent, float f, float f2, int i7, Actor actor) {
                        if (i7 == -1) {
                            LevelElement.this.f10746O = true;
                            LevelElement.this.m21272s();
                        }
                        super.enter(inputEvent, f, f2, i7, actor);
                    }

                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
                    public void exit(InputEvent inputEvent, float f, float f2, int i7, Actor actor) {
                        if (i7 == -1) {
                            LevelElement.this.f10746O = false;
                            LevelElement.this.m21272s();
                        }
                        super.exit(inputEvent, f, f2, i7, actor);
                    }

                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                    public void clicked(InputEvent inputEvent, float f, float f2) {
                        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                        LevelSelectScreen.this.f10733h.m21257o(basicLevel);
                        LevelSelectScreen.this.f10733h.m21256p(true, false);
                    }

                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
                    public boolean touchDown(InputEvent inputEvent, float f, float f2, int i7, int i8) {
                        LevelElement.this.f10745N = true;
                        LevelElement.this.m21272s();
                        return super.touchDown(inputEvent, f, f2, i7, i8);
                    }

                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
                    public void touchUp(InputEvent inputEvent, float f, float f2, int i7, int i8) {
                        LevelElement.this.f10745N = false;
                        LevelElement.this.m21272s();
                        super.touchUp(inputEvent, f, f2, i7, i8);
                    }
                });
            }
            m21272s();
        }

        /* renamed from: s */
        public final void m21272s() {
            this.f10747P.clearActions();
            if (Game.f8589i.basicLevelManager.isOpened(this.f10744M)) {
                if (Game.f8589i.basicLevelManager.isMastered(this.f10744M)) {
                    if (this.f10745N) {
                        this.f10747P.setColor(LevelSelectScreen.f10724x);
                    } else if (this.f10746O) {
                        this.f10747P.setColor(LevelSelectScreen.f10725y);
                    } else {
                        this.f10747P.setColor(LevelSelectScreen.f10723w);
                    }
                } else if (this.f10745N) {
                    this.f10747P.setColor(LevelSelectScreen.f10721u);
                } else if (this.f10746O) {
                    this.f10747P.setColor(LevelSelectScreen.f10722v);
                } else {
                    this.f10747P.setColor(LevelSelectScreen.f10720t);
                }
            } else if (this.f10745N) {
                this.f10747P.setColor(LevelSelectScreen.f10716p);
            } else if (this.f10746O) {
                this.f10747P.setColor(LevelSelectScreen.f10717q);
            } else if (Game.f8589i.basicLevelManager.canBePurchased(this.f10744M)) {
                this.f10747P.addAction(Actions.forever(Actions.sequence(Actions.color(LevelSelectScreen.f10718r, 0.5f), Actions.color(LevelSelectScreen.f10719s, 0.5f))));
                this.f10748Q.addAction(Actions.forever(Actions.sequence(Actions.color(LevelSelectScreen.f10718r, 0.5f), Actions.color(LevelSelectScreen.f10719s, 0.5f))));
            } else {
                this.f10747P.setColor(LevelSelectScreen.f10715o);
                this.f10748Q.setColor(LevelSelectScreen.f10715o);
            }
        }

        public void setTopLeaderboards(Array<LeaderBoardManager.LeaderboardsEntry> array) {
            Group group = this.f10749R;
            if (group != null && array.size != 0) {
                group.setVisible(true);
                this.f10749R.clearChildren();
                Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-crown"));
                image.setSize(32.0f, 32.0f);
                image.setPosition(16.0f, 196.0f);
                this.f10749R.addActor(image);
                for (int i = 0; i < array.size; i++) {
                    LeaderBoardManager.LeaderboardsEntry leaderboardsEntry = array.get(i);
                    float f = i;
                    float f2 = 1.0f - (0.25f * f);
                    LimitedWidthLabel limitedWidthLabel = new LimitedWidthLabel(leaderboardsEntry.nickname, 21, 21, 240.0f);
                    limitedWidthLabel.setColor(0.0f, 0.0f, 0.0f, 0.56f * f2);
                    float f3 = 198.0f - (f * 26.0f);
                    limitedWidthLabel.setPosition(59.0f, f3 - 2.0f);
                    this.f10749R.addActor(limitedWidthLabel);
                    LimitedWidthLabel limitedWidthLabel2 = new LimitedWidthLabel(leaderboardsEntry.nickname, 21, 21, 240.0f);
                    limitedWidthLabel2.setPosition(57.0f, f3);
                    limitedWidthLabel2.setColor(1.0f, 1.0f, 1.0f, f2);
                    this.f10749R.addActor(limitedWidthLabel2);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public class LevelMenuOverlay implements Disposable {

        /* renamed from: a */
        public boolean f10754a;

        /* renamed from: b */
        public BasicLevel f10755b;

        /* renamed from: d */
        public Group f10756d;

        /* renamed from: com.prineside.tdi2.screens.LevelSelectScreen$LevelMenuOverlay$8 */
        /* loaded from: classes2.dex */
        public class RunnableC20808 implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ BasicLevel f10780a;

            public RunnableC20808(BasicLevel basicLevel) {
                this.f10780a = basicLevel;
            }

            @Override // java.lang.Runnable
            public void run() {
                Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                new Runnable() { // from class: com.prineside.tdi2.screens.LevelSelectScreen.LevelMenuOverlay.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                        if (GameStateSystem.savedGameExists()) {
                            Game game = Game.f8589i;
                            game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("saved_game_will_be_lost_confirm"), new Runnable() { // from class: com.prineside.tdi2.screens.LevelSelectScreen.LevelMenuOverlay.8.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    GameStateSystem.deleteSavedGame();
                                    Game.f8589i.screenManager.startNewBasicLevel(RunnableC20808.this.f10780a, null);
                                }
                            });
                            return;
                        }
                        Game.f8589i.screenManager.startNewBasicLevel(RunnableC20808.this.f10780a, null);
                    }
                }.run();
            }
        }

        /* renamed from: com.prineside.tdi2.screens.LevelSelectScreen$LevelMenuOverlay$9 */
        /* loaded from: classes2.dex */
        public class RunnableC20839 implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ BasicLevel f10784a;

            public RunnableC20839(BasicLevel basicLevel) {
                this.f10784a = basicLevel;
            }

            @Override // java.lang.Runnable
            public void run() {
                Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                final Runnable runnable = new Runnable() { // from class: com.prineside.tdi2.screens.LevelSelectScreen.LevelMenuOverlay.9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                        LevelSelectScreen.this.f10733h.m21256p(false, true);
                        Game.f8589i.uiManager.abilitySelectionOverlay.show(new Runnable() { // from class: com.prineside.tdi2.screens.LevelSelectScreen.LevelMenuOverlay.9.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                LevelSelectScreen.this.f10733h.m21256p(true, true);
                            }
                        }, new ObjectRetriever<AbilitySelectionOverlay.SelectedAbilitiesConfiguration>() { // from class: com.prineside.tdi2.screens.LevelSelectScreen.LevelMenuOverlay.9.1.2
                            @Override // com.prineside.tdi2.utils.ObjectRetriever
                            public void retrieved(AbilitySelectionOverlay.SelectedAbilitiesConfiguration selectedAbilitiesConfiguration) {
                                Game.f8589i.screenManager.startNewBasicLevel(RunnableC20839.this.f10784a, selectedAbilitiesConfiguration);
                            }
                        });
                    }
                };
                new Runnable() { // from class: com.prineside.tdi2.screens.LevelSelectScreen.LevelMenuOverlay.9.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                        if (GameStateSystem.savedGameExists()) {
                            Game game = Game.f8589i;
                            game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("saved_game_will_be_lost_confirm"), new Runnable() { // from class: com.prineside.tdi2.screens.LevelSelectScreen.LevelMenuOverlay.9.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    GameStateSystem.deleteSavedGame();
                                    runnable.run();
                                }
                            });
                            return;
                        }
                        runnable.run();
                    }
                }.run();
            }
        }

        /* loaded from: classes2.dex */
        public class EyeButton extends Group {

            /* renamed from: M */
            public boolean f10792M;

            /* renamed from: N */
            public boolean f10793N;

            /* renamed from: O */
            public QuadActor f10794O;

            public EyeButton(final Runnable runnable) {
                setTransform(false);
                setSize(92.0f, 52.0f);
                Color cpy = MaterialColor.LIGHT_BLUE.P900.cpy();
                cpy.f3889a = 0.56f;
                addActor(new QuadActor(cpy, new float[]{0.0f, -9.0f, 0.0f, 38.0f, 84.0f, 52.0f, 72.0f, 0.0f}));
                QuadActor quadActor = new QuadActor(Color.WHITE, new float[]{0.0f, 0.0f, 0.0f, 52.0f, 84.0f, 52.0f, 72.0f, 0.0f});
                this.f10794O = quadActor;
                quadActor.setPosition(8.0f, 0.0f);
                addActor(this.f10794O);
                Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-eye"));
                image.setSize(32.0f, 32.0f);
                image.setPosition(30.0f, 10.0f);
                addActor(image);
                setTouchable(Touchable.enabled);
                addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.LevelSelectScreen.LevelMenuOverlay.EyeButton.1
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
                    public void enter(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                        if (i == -1) {
                            EyeButton.this.f10793N = true;
                            EyeButton.this.m21252s();
                        }
                        super.enter(inputEvent, f, f2, i, actor);
                    }

                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
                    public void exit(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                        if (i == -1) {
                            EyeButton.this.f10793N = false;
                            EyeButton.this.m21252s();
                        }
                        super.exit(inputEvent, f, f2, i, actor);
                    }

                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                    public void clicked(InputEvent inputEvent, float f, float f2) {
                        runnable.run();
                        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                    }

                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
                    public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                        EyeButton.this.f10792M = true;
                        EyeButton.this.m21252s();
                        return super.touchDown(inputEvent, f, f2, i, i2);
                    }

                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
                    public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
                        EyeButton.this.f10792M = false;
                        EyeButton.this.m21252s();
                        super.touchUp(inputEvent, f, f2, i, i2);
                    }
                });
                m21252s();
            }

            /* renamed from: s */
            public final void m21252s() {
                if (this.f10792M) {
                    this.f10794O.setColor(MaterialColor.LIGHT_BLUE.P900);
                } else if (this.f10793N) {
                    this.f10794O.setColor(MaterialColor.LIGHT_BLUE.P700);
                } else {
                    this.f10794O.setColor(MaterialColor.LIGHT_BLUE.P800);
                }
            }
        }

        /* loaded from: classes2.dex */
        public class QuestsList extends Group {

            /* renamed from: M */
            public final /* synthetic */ LevelMenuOverlay f10799M;

            public QuestsList(final LevelMenuOverlay levelMenuOverlay, final BasicLevel basicLevel) {
                float f;
                float f2;
                float f3;
                int i;
                Array array;
                int i2;
                Table table;
                int i3;
                Cell add;
                Actor generateIcon;
                float f4;
                float f5;
                QuestsList questsList = this;
                BasicLevel basicLevel2 = basicLevel;
                questsList.f10799M = levelMenuOverlay;
                questsList.setTransform(false);
                questsList.setSize(870.0f, 222.0f);
                float f6 = 54.0f;
                float f7 = 52.0f;
                float f8 = (basicLevel2.quests.size * 54.0f) + 52.0f;
                float f9 = f8 < 220.0f ? 220.0f : f8;
                Group group = new Group();
                group.setTransform(false);
                group.setSize(870.0f, f9);
                ScrollPane scrollPane = new ScrollPane(group);
                float f10 = 0.0f;
                scrollPane.setPosition(0.0f, 1.0f);
                scrollPane.setSize(870.0f, 220.0f);
                questsList.addActor(scrollPane);
                Image image = new Image(Game.f8589i.assetManager.getDrawable("gradient-bottom"));
                image.setColor(new Color(791621631));
                image.setSize(870.0f, 52.0f);
                image.setTouchable(Touchable.disabled);
                questsList.addActor(image);
                int intValue = Game.f8589i.gameValueManager.getSnapshot().getIntValue(GameValueType.REGULAR_QUESTS_SLOTS);
                Array array2 = new Array(ItemStack.class);
                int i4 = 0;
                int i5 = 0;
                float f11 = 0.0f;
                while (true) {
                    Array<BasicLevelQuestConfig> array3 = basicLevel2.quests;
                    if (i5 >= array3.size) {
                        break;
                    }
                    final BasicLevelQuestConfig basicLevelQuestConfig = array3.get(i5);
                    float f12 = (f9 - (i5 * f6)) - f7;
                    Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                    image2.setColor(new Color(f10, f10, f10, 0.14f));
                    image2.setSize(870.0f, 52.0f);
                    image2.setPosition(f10, f12);
                    group.addActor(image2);
                    if (basicLevelQuestConfig.isCompleted()) {
                        Color color = MaterialColor.GREEN.P500;
                        Color cpy = color.cpy();
                        cpy.f3889a = 0.07f;
                        image2.setColor(cpy);
                        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("gradient-right"));
                        image3.setColor(color);
                        image3.getColor().f3889a = 0.28f;
                        f = 52.0f;
                        f2 = 870.0f;
                        image3.setSize(870.0f, 52.0f);
                        f3 = 0.0f;
                        image3.setPosition(0.0f, f12);
                        group.addActor(image3);
                    } else {
                        f = 52.0f;
                        f2 = 870.0f;
                        f3 = 0.0f;
                        if (f11 == 0.0f) {
                            f11 = f12;
                        }
                    }
                    Table table2 = new Table();
                    table2.setSize(f2, f);
                    table2.setPosition(f3, f12);
                    group.addActor(table2);
                    boolean z = i4 >= intValue && !basicLevelQuestConfig.isScripted();
                    int i6 = i4;
                    table2.add((Table) new Label(z ? "[#777777]???????[]" : basicLevelQuestConfig.getTitle(true, true), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), Color.WHITE))).padLeft(12.0f).padRight(12.0f);
                    array2.clear();
                    array2.addAll(basicLevelQuestConfig.getPrizes(Game.f8589i.gameValueManager.getSnapshot()));
                    int extraDustInEndless = basicLevelQuestConfig.getExtraDustInEndless(Game.f8589i.gameValueManager.getSnapshot());
                    if (DifficultyMode.isEndless(Game.f8589i.progressManager.getDifficultyMode()) && extraDustInEndless > 0) {
                        array2.add(new ItemStack(Item.C1543D.BIT_DUST, extraDustInEndless));
                    }
                    int i7 = 0;
                    while (i7 < array2.size) {
                        final ItemStack itemStack = ((ItemStack[]) array2.items)[i7];
                        if (itemStack.getItem() != Item.C1543D.STAR && itemStack.getItem().getType() != ItemType.GREEN_PAPER && itemStack.getItem().getType() != ItemType.ACCELERATOR) {
                            generateIcon = new Image(Game.f8589i.uiManager.itemCellRarityCoats[i7 % 2][itemStack.getItem().getRarity().ordinal()]);
                            f4 = 29.0f;
                            f5 = 2.0f;
                        } else {
                            generateIcon = itemStack.getItem().generateIcon(32.0f, true);
                            generateIcon.setTouchable(Touchable.enabled);
                            generateIcon.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.LevelSelectScreen.LevelMenuOverlay.QuestsList.1
                                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                                public void clicked(InputEvent inputEvent, float f13, float f14) {
                                    if (!basicLevelQuestConfig.isCompleted()) {
                                        Game.f8589i.uiManager.itemDescriptionDialog.show(itemStack.getItem());
                                    } else {
                                        Game.f8589i.uiManager.itemDescriptionDialog.show(itemStack.getItem(), itemStack.getCount());
                                    }
                                    Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                                }
                            });
                            f4 = 32.0f;
                            f5 = 0.0f;
                        }
                        generateIcon.setSize(f4, 32.0f);
                        Group group2 = new Group();
                        group2.setTransform(false);
                        group2.addActor(generateIcon);
                        table2.add((Table) group2).size(f4, 32.0f).padLeft(f5).padRight(f5 + 2.0f);
                        i7++;
                        questsList = this;
                    }
                    table2.add().expand();
                    final int questSkipPrice = Game.f8589i.basicLevelManager.getQuestSkipPrice(basicLevelQuestConfig);
                    if (questSkipPrice <= 0 || Game.f8589i.dailyQuestManager.getDailyLootCurrentQuest().equals(basicLevelQuestConfig.f8469id)) {
                        i = i5;
                        array = array2;
                        i2 = intValue;
                        table = table2;
                        i3 = i6;
                    } else {
                        i3 = i6;
                        i = i5;
                        array = array2;
                        i2 = intValue;
                        table = table2;
                        PaddedImageButton paddedImageButton = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-double-triangle-right"), new Runnable() { // from class: com.prineside.tdi2.screens.LevelSelectScreen.LevelMenuOverlay.QuestsList.2
                            @Override // java.lang.Runnable
                            public void run() {
                                Game.f8589i.uiManager.dialog.showConfirm(Game.f8589i.localeManager.i18n.format("regular_quest_skip_confirm", Integer.valueOf(questSkipPrice)), new Runnable() { // from class: com.prineside.tdi2.screens.LevelSelectScreen.LevelMenuOverlay.QuestsList.2.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        Game.f8589i.basicLevelManager.skipQuest(basicLevelQuestConfig);
                                        Game.f8589i.uiManager.dialog.hide();
                                        LevelSelectScreen.this.f10733h.m21257o(basicLevel);
                                    }
                                });
                            }
                        }, MaterialColor.LIGHT_BLUE.P500, MaterialColor.LIGHT_BLUE.P400, MaterialColor.LIGHT_BLUE.P600);
                        paddedImageButton.setIconSize(32.0f, 32.0f);
                        paddedImageButton.setIconPosition(16.0f, 10.0f);
                        table.add((Table) paddedImageButton).size(64.0f, 52.0f).padRight(15.0f);
                    }
                    table.add((Table) new Label(z ? "[#777777]??? / ???[]" : basicLevelQuestConfig.formatValueForUi(basicLevelQuestConfig.getCurrentValue(Game.f8589i.gameValueManager.getSnapshot()), basicLevelQuestConfig.getRequiredValue(Game.f8589i.gameValueManager.getSnapshot()), true), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), Color.WHITE)));
                    if (basicLevelQuestConfig.isCompleted()) {
                        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("icon-check"));
                        image4.setColor(MaterialColor.GREEN.P500);
                        add = table.add((Table) image4);
                    } else {
                        add = table.add();
                    }
                    add.size(32.0f).padRight(40.0f).padLeft(12.0f);
                    i4 = !basicLevelQuestConfig.isCompleted() ? i3 + 1 : i3;
                    questsList = this;
                    i5 = i + 1;
                    intValue = i2;
                    array2 = array;
                    f10 = 0.0f;
                    f6 = 54.0f;
                    f7 = 52.0f;
                    basicLevel2 = basicLevel;
                }
                if (f11 != 0.0f) {
                    scrollPane.scrollTo(0.0f, f11, 1.0f, 1.0f, false, true);
                }
            }
        }

        /* loaded from: classes2.dex */
        public class WaveQuestsLine extends Group {

            /* loaded from: classes2.dex */
            public class WaveMilestoneConfig {

                /* renamed from: a */
                public int f10815a;

                /* renamed from: b */
                public BasicLevel.WaveQuest f10816b;

                /* renamed from: c */
                public BossType f10817c;

                public WaveMilestoneConfig() {
                }
            }

            /* renamed from: q */
            public static /* synthetic */ int m21250q(WaveMilestoneConfig waveMilestoneConfig, WaveMilestoneConfig waveMilestoneConfig2) {
                return C7221i.m2085a(waveMilestoneConfig.f10815a, waveMilestoneConfig2.f10815a);
            }

            public WaveQuestsLine(BasicLevel basicLevel) {
                float f;
                String str;
                float f2;
                boolean z;
                setTransform(false);
                BasicLevelStage stage = Game.f8589i.basicLevelManager.getStage(basicLevel.stageName);
                setSize(870.0f, 176.0f);
                Array array = new Array();
                int i = 0;
                while (true) {
                    Array<BasicLevel.WaveQuest> array2 = basicLevel.waveQuests;
                    if (i >= array2.size) {
                        break;
                    }
                    BasicLevel.WaveQuest waveQuest = array2.get(i);
                    WaveMilestoneConfig waveMilestoneConfig = new WaveMilestoneConfig();
                    waveMilestoneConfig.f10815a = waveQuest.waves;
                    waveMilestoneConfig.f10816b = waveQuest;
                    array.add(waveMilestoneConfig);
                    i++;
                }
                IntMap<BossType> bossWaves = basicLevel.getMap().getBossWaves();
                if (bossWaves != null) {
                    Iterator<IntMap.Entry<BossType>> it = bossWaves.iterator();
                    while (it.hasNext()) {
                        IntMap.Entry<BossType> next = it.next();
                        int i2 = 0;
                        while (true) {
                            if (i2 >= array.size) {
                                z = false;
                                break;
                            } else if (((WaveMilestoneConfig) array.get(i2)).f10815a == next.key) {
                                ((WaveMilestoneConfig) array.get(i2)).f10817c = next.value;
                                z = true;
                                break;
                            } else {
                                i2++;
                            }
                        }
                        if (!z) {
                            WaveMilestoneConfig waveMilestoneConfig2 = new WaveMilestoneConfig();
                            waveMilestoneConfig2.f10815a = next.key;
                            waveMilestoneConfig2.f10817c = next.value;
                            array.add(waveMilestoneConfig2);
                        }
                    }
                }
                array.sort(new Comparator() { // from class: com.prineside.tdi2.screens.w
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        int m21250q;
                        m21250q = LevelSelectScreen.LevelMenuOverlay.WaveQuestsLine.m21250q((LevelSelectScreen.LevelMenuOverlay.WaveQuestsLine.WaveMilestoneConfig) obj, (LevelSelectScreen.LevelMenuOverlay.WaveQuestsLine.WaveMilestoneConfig) obj2);
                        return m21250q;
                    }
                });
                Group group = new Group();
                group.setTransform(false);
                ScrollPane scrollPane = new ScrollPane(group);
                scrollPane.setSize(868.0f, 176.0f);
                scrollPane.setPosition(1.0f, 0.0f);
                addActor(scrollPane);
                Actor image = new Image(Game.f8589i.assetManager.getDrawable("gradient-left"));
                image.setColor(new Color(791621631));
                image.setSize(80.0f, 176.0f);
                image.setTouchable(Touchable.disabled);
                addActor(image);
                int i3 = ((WaveMilestoneConfig) array.get(array.size - 1)).f10815a;
                int i4 = 9999;
                int i5 = 0;
                int i6 = 0;
                while (i5 < array.size) {
                    int i7 = ((WaveMilestoneConfig) array.get(i5)).f10815a - i6;
                    int i8 = ((WaveMilestoneConfig) array.get(i5)).f10815a;
                    if (i7 < i4) {
                        i4 = i7;
                    }
                    i5++;
                    i6 = i8;
                }
                float ceil = (float) StrictMath.ceil(50.0f / (i4 > 10 ? 10 : i4));
                String str2 = "blank";
                Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                float f3 = 5.0f;
                image2.setSize(i3 * ceil, 5.0f);
                image2.setColor(new Color(488447487));
                image2.setPosition(80.0f, 133.0f);
                group.addActor(image2);
                int i9 = basicLevel.maxReachedWave;
                i9 = i9 - i6 > 14 ? i6 + 14 : i9;
                if (i9 != 0) {
                    Image image3 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                    image3.setSize(i9 * ceil, 5.0f);
                    image3.setColor(stage.color);
                    image3.setPosition(80.0f, 133.0f);
                    group.addActor(image3);
                    if (i9 != basicLevel.maxReachedWave) {
                        float f4 = (((i6 + 7) * ceil) + 80.0f) - 17.0f;
                        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                        image4.setSize(45.0f, 5.0f);
                        image4.setColor(new Color(791621631));
                        image4.setPosition(f4 - 5.0f, 133.0f);
                        group.addActor(image4);
                        int i10 = 0;
                        while (i10 < 3) {
                            Image image5 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                            image5.setSize(f3, f3);
                            image5.setColor(stage.color);
                            image5.setPosition(f4 + f3 + (i10 * 10), 133.0f);
                            group.addActor(image5);
                            i10++;
                            f3 = 5.0f;
                        }
                    }
                }
                float f5 = 80.0f + (i9 * ceil);
                Image image6 = new Image(Game.f8589i.assetManager.getDrawable("small-triangle-mark-bottom"));
                image6.setSize(10.0f, 5.0f);
                image6.setPosition(f5 - 5.0f, 140.0f);
                image6.setColor(stage.color);
                group.addActor(image6);
                Table table = new Table();
                table.setSize(200.0f, 24.0f);
                table.setPosition(f5 - 100.0f, 150.0f);
                group.addActor(table);
                Image image7 = new Image(Game.f8589i.assetManager.getDrawable("icon-wave"));
                image7.setColor(stage.color);
                table.add((Table) image7).size(24.0f).padRight(8.0f);
                Label label = new Label(String.valueOf(basicLevel.maxReachedWave), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), Color.WHITE));
                label.setColor(stage.color);
                table.add((Table) label);
                int i11 = 0;
                while (i11 < array.size) {
                    final WaveMilestoneConfig waveMilestoneConfig3 = (WaveMilestoneConfig) array.get(i11);
                    float f6 = (waveMilestoneConfig3.f10815a * ceil) + 80.0f;
                    Image image8 = new Image(Game.f8589i.assetManager.getDrawable("ui-level-selection-milestone-top"));
                    BasicLevel.WaveQuest waveQuest2 = waveMilestoneConfig3.f10816b;
                    if (waveQuest2 != null && waveQuest2.isCompleted()) {
                        image8.setColor(stage.color);
                        image8.getColor().lerp(new Color(488447487), 0.44f);
                    } else {
                        image8.setColor(new Color(488447487));
                    }
                    float f7 = f6 - 24.0f;
                    image8.setPosition(f7, 114.0f);
                    image8.setSize(48.0f, 13.0f);
                    group.addActor(image8);
                    Image image9 = new Image(Game.f8589i.assetManager.getDrawable(str2));
                    Array array3 = array;
                    image9.setColor(new Color(488447487));
                    BasicLevel.WaveQuest waveQuest3 = waveMilestoneConfig3.f10816b;
                    if (waveQuest3 != null) {
                        int i12 = waveQuest3.prizes.size;
                        f = ceil;
                        int i13 = 0;
                        while (true) {
                            Array<ItemStack> array4 = waveMilestoneConfig3.f10816b.prizes;
                            str = str2;
                            if (i13 >= array4.size) {
                                break;
                            } else if (array4.items[i13].getItem() == Item.C1543D.STAR) {
                                i12--;
                                break;
                            } else {
                                i13++;
                                str2 = str;
                            }
                        }
                        f2 = (i12 * 26.0f) + 36.0f;
                    } else {
                        f = ceil;
                        str = str2;
                        f2 = 36.0f;
                    }
                    f2 = waveMilestoneConfig3.f10817c != null ? f2 + 58.0f : f2;
                    image9.setPosition(f7, 114.0f - f2);
                    image9.setSize(48.0f, f2);
                    group.addActor(image9);
                    BasicLevel.WaveQuest waveQuest4 = waveMilestoneConfig3.f10816b;
                    if (waveQuest4 != null && waveQuest4.isCompleted()) {
                        Image image10 = new Image(Game.f8589i.assetManager.getDrawable("gradient-top"));
                        image10.setColor(image8.getColor());
                        image10.setPosition(f7, 78.0f);
                        image10.setSize(48.0f, 36.0f);
                        group.addActor(image10);
                    }
                    Label label2 = new Label(String.valueOf(waveMilestoneConfig3.f10815a), new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), Color.WHITE));
                    label2.setSize(48.0f, 10.0f);
                    label2.setAlignment(4);
                    label2.setPosition(f7, 90.0f);
                    group.addActor(label2);
                    if (waveMilestoneConfig3.f10817c != null) {
                        Image image11 = new Image(Game.f8589i.assetManager.getDrawable("level-select-wave-marker-boss-frame"));
                        image11.setSize(67.0f, 58.0f);
                        image11.setPosition(f6 - 28.0f, 38.0f);
                        group.addActor(image11);
                        Image image12 = new Image(Game.f8589i.waveManager.getWaveProcessorFactory(waveMilestoneConfig3.f10817c).getIconTexture());
                        image12.setSize(32.0f, 32.0f);
                        image12.setPosition(f6 - 16.0f, 48.0f);
                        group.addActor(image12);
                    }
                    if (waveMilestoneConfig3.f10816b != null) {
                        float f8 = waveMilestoneConfig3.f10817c != null ? 8.0f : 62.0f;
                        int i14 = 0;
                        int i15 = 0;
                        while (true) {
                            Array<ItemStack> array5 = waveMilestoneConfig3.f10816b.prizes;
                            if (i14 < array5.size) {
                                final ItemStack itemStack = array5.get(i14);
                                if (itemStack.getItem() == Item.C1543D.STAR) {
                                    Actor generateIcon = itemStack.getItem().generateIcon(24.0f, false);
                                    generateIcon.setPosition(f6 - 17.0f, 125.0f);
                                    generateIcon.setColor(new Color(791621631));
                                    group.addActor(generateIcon);
                                    Actor generateIcon2 = itemStack.getItem().generateIcon(24.0f, false);
                                    generateIcon2.setPosition(f6 - 7.0f, 125.0f);
                                    generateIcon2.setColor(new Color(791621631));
                                    group.addActor(generateIcon2);
                                    Actor generateIcon3 = itemStack.getItem().generateIcon(24.0f, false);
                                    generateIcon3.setPosition(f6 - 12.0f, 125.0f);
                                    if (waveMilestoneConfig3.f10816b.isCompleted()) {
                                        generateIcon3.setColor(stage.color);
                                    }
                                    group.addActor(generateIcon3);
                                } else {
                                    Actor generateIcon4 = itemStack.getItem().generateIcon(24.0f, true);
                                    generateIcon4.setPosition(f6 - 12.0f, f8 - (i15 * 26.0f));
                                    group.addActor(generateIcon4);
                                    generateIcon4.setTouchable(Touchable.enabled);
                                    generateIcon4.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.LevelSelectScreen.LevelMenuOverlay.WaveQuestsLine.1
                                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                                        public void clicked(InputEvent inputEvent, float f9, float f10) {
                                            if (!waveMilestoneConfig3.f10816b.isCompleted()) {
                                                Game.f8589i.uiManager.itemDescriptionDialog.show(itemStack.getItem());
                                            } else {
                                                Game.f8589i.uiManager.itemDescriptionDialog.show(itemStack.getItem(), itemStack.getCount());
                                            }
                                            Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                                        }
                                    });
                                    i15++;
                                }
                                i14++;
                            }
                        }
                    }
                    i11++;
                    array = array3;
                    ceil = f;
                    str2 = str;
                }
                SnapshotArray<Actor> children = group.getChildren();
                float f9 = 0.0f;
                for (int i16 = 0; i16 < children.size; i16++) {
                    float x = children.get(i16).getX() + children.get(i16).getWidth();
                    if (x > f9) {
                        f9 = x;
                    }
                }
                group.setSize(f9 + 40.0f, 176.0f);
                scrollPane.layout();
                float f10 = f5 - 435.0f;
                if (f10 > 0.0f) {
                    scrollPane.setScrollX(f10);
                }
            }
        }

        /* renamed from: j */
        public static /* synthetic */ int m21262j(SourceTile sourceTile, SourceTile sourceTile2) {
            ResourceType[] resourceTypeArr;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                ResourceType[] resourceTypeArr2 = ResourceType.values;
                if (i2 >= resourceTypeArr2.length) {
                    break;
                }
                i3 += sourceTile.getResourcesCount(resourceTypeArr2[i2]);
                i4 += sourceTile2.getResourcesCount(resourceTypeArr2[i2]);
                i2++;
            }
            if (i3 == 0) {
                i3 = 1;
            }
            if (i4 == 0) {
                i4 = 1;
            }
            float f = 0.0f;
            float f2 = 0.0f;
            while (true) {
                if (i < ResourceType.values.length) {
                    float f3 = (i * 2) + 1;
                    f2 += (sourceTile.getResourcesCount(resourceTypeArr[i]) / i3) * f3;
                    f += (sourceTile2.getResourcesCount(resourceTypeArr[i]) / i4) * f3;
                    i++;
                } else {
                    return Float.compare(f * sourceTile2.getResourceDensity(), f2 * sourceTile.getResourceDensity());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: k */
        public /* synthetic */ void m21261k() {
            m21256p(false, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: l */
        public /* synthetic */ void m21260l() {
            LevelSelectScreen.this.f10738m.getTable().setVisible(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: m */
        public /* synthetic */ void m21259m() {
            m21256p(false, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: n */
        public /* synthetic */ void m21258n() {
            LevelSelectScreen.this.f10738m.getTable().setVisible(false);
        }

        @Override // com.badlogic.gdx.utils.Disposable
        public void dispose() {
            Game.f8589i.uiManager.darkOverlay.removeCaller("LevelSelectScreen levelMenu");
        }

        /* renamed from: i */
        public final boolean m21263i() {
            return this.f10754a;
        }

        /* JADX WARN: Removed duplicated region for block: B:158:0x0b6a  */
        /* JADX WARN: Removed duplicated region for block: B:202:0x0ddc  */
        /* JADX WARN: Removed duplicated region for block: B:203:0x0dfc  */
        /* renamed from: o */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m21257o(final com.prineside.tdi2.BasicLevel r22) {
            /*
                Method dump skipped, instructions count: 3766
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.screens.LevelSelectScreen.LevelMenuOverlay.m21257o(com.prineside.tdi2.BasicLevel):void");
        }

        public LevelMenuOverlay() {
            Group group = new Group();
            group.setTransform(false);
            group.setOrigin(600.0f, 380.0f);
            LevelSelectScreen.this.f10738m.getTable().add((Table) group).size(1200.0f, 760.0f);
            Group group2 = new Group();
            this.f10756d = group2;
            group2.setTransform(true);
            this.f10756d.setOrigin(600.0f, 380.0f);
            this.f10756d.setSize(1200.0f, 760.0f);
            group.addActor(this.f10756d);
            LevelSelectScreen.this.f10738m.getTable().setVisible(false);
            this.f10754a = false;
        }

        /* renamed from: p */
        public final void m21256p(boolean z, boolean z2) {
            float f;
            if (LevelSelectScreen.this.f10735j) {
                return;
            }
            if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
                f = 1.0f;
            } else {
                f = 0.0f;
            }
            if (z2) {
                if (z) {
                    Game.f8589i.uiManager.darkOverlay.addCaller("LevelSelectScreen levelMenu", UiManager.MainUiLayer.SCREEN, 102, new Runnable() { // from class: com.prineside.tdi2.screens.r
                        @Override // java.lang.Runnable
                        public final void run() {
                            LevelSelectScreen.LevelMenuOverlay.this.m21261k();
                        }
                    });
                    LevelSelectScreen.this.f10738m.getTable().setVisible(true);
                    LevelSelectScreen.this.f10738m.getTable().setTouchable(Touchable.childrenOnly);
                    this.f10756d.clearActions();
                    this.f10756d.addAction(Actions.sequence(Actions.scaleTo(1.0f, 1.0f), Actions.moveTo((-Game.f8589i.settingsManager.getScaledViewportHeight()) * 2.0f, 0.0f), Actions.moveTo(0.0f, 0.0f, f * 0.2f)));
                } else {
                    Game.f8589i.uiManager.darkOverlay.removeCaller("LevelSelectScreen levelMenu");
                    LevelSelectScreen.this.f10738m.getTable().setTouchable(Touchable.disabled);
                    this.f10756d.clearActions();
                    this.f10756d.addAction(Actions.sequence(Actions.moveTo((-Game.f8589i.settingsManager.getScaledViewportHeight()) * 2.0f, 0.0f, f * 0.2f), Actions.run(new Runnable() { // from class: com.prineside.tdi2.screens.s
                        @Override // java.lang.Runnable
                        public final void run() {
                            LevelSelectScreen.LevelMenuOverlay.this.m21260l();
                        }
                    })));
                }
            } else if (z) {
                Game.f8589i.uiManager.darkOverlay.addCaller("LevelSelectScreen levelMenu", UiManager.MainUiLayer.SCREEN, 102, new Runnable() { // from class: com.prineside.tdi2.screens.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        LevelSelectScreen.LevelMenuOverlay.this.m21259m();
                    }
                });
                LevelSelectScreen.this.f10738m.getTable().setVisible(true);
                LevelSelectScreen.this.f10738m.getTable().setTouchable(Touchable.childrenOnly);
                this.f10756d.clearActions();
                Group group = this.f10756d;
                ScaleToAction scaleTo = Actions.scaleTo(0.0f, 0.0f);
                MoveToAction moveTo = Actions.moveTo(0.0f, 0.0f);
                DelayAction delay = Actions.delay(0.1f);
                float f2 = f * 0.3f;
                Interpolation.SwingOut swingOut = Interpolation.swingOut;
                group.addAction(Actions.sequence(scaleTo, moveTo, Actions.parallel(Actions.sequence(delay, Actions.scaleBy(1.0f, 0.0f, f2, swingOut)), Actions.scaleBy(0.0f, 1.0f, f2, swingOut))));
            } else {
                Game.f8589i.uiManager.darkOverlay.removeCaller("LevelSelectScreen levelMenu");
                LevelSelectScreen.this.f10738m.getTable().setTouchable(Touchable.disabled);
                this.f10756d.clearActions();
                Group group2 = this.f10756d;
                DelayAction delay2 = Actions.delay(0.07f * f);
                float f3 = f * 0.3f;
                Interpolation.SwingIn swingIn = Interpolation.swingIn;
                group2.addAction(Actions.sequence(Actions.parallel(Actions.sequence(delay2, Actions.scaleBy(0.0f, -this.f10756d.getScaleY(), f3, swingIn)), Actions.scaleBy(-this.f10756d.getScaleX(), 0.0f, f3, swingIn)), Actions.run(new Runnable() { // from class: com.prineside.tdi2.screens.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        LevelSelectScreen.LevelMenuOverlay.this.m21258n();
                    }
                })));
            }
            this.f10754a = z;
            if (!z) {
                LevelSelectScreen.this.m21278w();
            }
        }
    }

    /* loaded from: classes2.dex */
    public class StageHeader extends Group {
        public StageHeader(float f, BasicLevelStage basicLevelStage) {
            setTransform(false);
            setSize(f, 100.0f);
            Table table = new Table();
            table.setTouchable(Touchable.disabled);
            table.setFillParent(true);
            addActor(table);
            Label label = new Label(Game.f8589i.localeManager.i18n.get("level_stage") + " " + basicLevelStage.name, LevelSelectScreen.this.f10726a);
            label.setColor(basicLevelStage.color);
            table.add((Table) label).bottom().left().padBottom(30.0f);
            table.add((Table) new Label(basicLevelStage.getTitle(), LevelSelectScreen.this.f10727b)).expand().bottom().left().padLeft(16.0f).padBottom(33.0f);
            Label label2 = new Label(String.valueOf(Game.f8589i.basicLevelManager.getGainedStars(basicLevelStage)), LevelSelectScreen.this.f10728c);
            label2.setColor(basicLevelStage.color);
            table.add((Table) label2).bottom().right().padBottom(30.0f);
            Label label3 = new Label(" / " + Game.f8589i.basicLevelManager.getMaxStars(basicLevelStage, true), LevelSelectScreen.this.f10729d);
            label3.setColor(basicLevelStage.color);
            label3.getColor().f3889a = 0.56f;
            table.add((Table) label3).bottom().right().padBottom(33.0f);
            Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-star-stack"));
            image.setColor(basicLevelStage.color);
            table.add((Table) image).bottom().right().padLeft(16.0f).padBottom(23.0f);
        }
    }

    public LevelSelectScreen() {
        this.f10734i = new ObjectMap<>();
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.SCREEN;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, 100, "LevelSelectScreen main", true);
        this.f10736k = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(mainUiLayer, 101, "LevelSelectScreen scroll gradients");
        this.f10737l = addLayer2;
        this.f10738m = Game.f8589i.uiManager.addLayer(mainUiLayer, 103, "LevelSelectScreen level menu overlay");
        this.f10739n = new ObjectRetriever<LeaderBoardManager.BasicLevelsTopLeaderboards>() { // from class: com.prineside.tdi2.screens.LevelSelectScreen.1
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(LeaderBoardManager.BasicLevelsTopLeaderboards basicLevelsTopLeaderboards) {
                if (basicLevelsTopLeaderboards.success) {
                    ObjectMap.Entries<String, Array<LeaderBoardManager.LeaderboardsEntry>> it = basicLevelsTopLeaderboards.leaderboards.iterator();
                    while (it.hasNext()) {
                        ObjectMap.Entry next = it.next();
                        if (LevelSelectScreen.this.f10734i.containsKey((String) next.key)) {
                            ((LevelElement) LevelSelectScreen.this.f10734i.get((String) next.key)).setTopLeaderboards((Array) next.value);
                        }
                    }
                }
            }
        };
        Game.f8589i.uiManager.hideAllComponents();
        Game.f8589i.uiManager.resourcesAndMoney.setVisible(true);
        Game.f8589i.uiManager.inventoryOverlay.hide(true);
        Game game = Game.f8589i;
        game.uiManager.screenTitle.setText(game.localeManager.i18n.get("level_select_title")).setIcon(Game.f8589i.assetManager.getDrawable("icon-joystick")).setVisible(true);
        Game.f8589i.uiManager.backButton.setVisible(true).setText(null).setClickHandler(new Runnable() { // from class: com.prineside.tdi2.screens.LevelSelectScreen.2
            @Override // java.lang.Runnable
            public void run() {
                LevelSelectScreen.this.m21277x();
            }
        });
        Game.f8589i.musicManager.continuePlayingMenuMusicTrack();
        ParticleEffect particleEffect = new ParticleEffect();
        particleEffect.load(Gdx.files.external("particles/dust-n-sparks-bg.prt"), Game.f8589i.assetManager.getTextureRegion("particle-triangle").getAtlas());
        particleEffect.setEmittersCleanUpBlendFunction(false);
        this.f10732g = new ParticleEffectPool(particleEffect, 0, 8);
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(36);
        Color color = Color.WHITE;
        this.f10726a = new Label.LabelStyle(font, color);
        this.f10727b = new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), new Color(1.0f, 1.0f, 1.0f, 0.28f));
        this.f10728c = new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), color);
        this.f10729d = new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color);
        Group group = new Group();
        this.f10730e = group;
        group.setTransform(false);
        ScrollPane scrollPane = new ScrollPane(this.f10730e);
        this.f10731f = scrollPane;
        scrollPane.setScrollingDisabled(true, false);
        addLayer.getTable().add((Table) this.f10731f).expand().fill();
        addLayer2.getTable().setTouchable(Touchable.disabled);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("gradient-top"));
        image.setColor(Config.BACKGROUND_COLOR);
        addLayer2.getTable().add((Table) image).fillX().height(128.0f).row();
        addLayer2.getTable().add().expand();
        this.f10733h = new LevelMenuOverlay();
        Game.f8589i.progressManager.checkSpecialTrophiesGiven();
        Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void dispose() {
        this.f10735j = true;
        Game.f8589i.uiManager.removeLayer(this.f10736k);
        Game.f8589i.uiManager.removeLayer(this.f10737l);
        Game.f8589i.uiManager.removeLayer(this.f10738m);
        Game.f8589i.leaderBoardManager.removeBasicLevelsTopLeaderboardsRetriever(this.f10739n);
        this.f10733h.dispose();
    }

    @Override // com.prineside.tdi2.Screen
    public void draw(float f) {
        Color color = Game.f8589i.assetManager.getColor("menu_background");
        Gdx.f3119gl.glClearColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
        Gdx.f3119gl.glClear(16640);
        if (Game.f8589i.settingsManager.isEscButtonJustPressed()) {
            m21277x();
        }
    }

    /* renamed from: w */
    public final void m21278w() {
        Game.f8589i.uiManager.setAsInputHandler();
        Game.f8589i.uiManager.stage.setScrollFocus(this.f10731f);
    }

    /* renamed from: x */
    public final boolean m21277x() {
        if (Game.f8589i.uiManager.abilitySelectionOverlay.isVisible()) {
            Game.f8589i.uiManager.abilitySelectionOverlay.hide();
        } else if (this.f10733h.m21263i()) {
            this.f10733h.m21256p(false, false);
        } else {
            Game.f8589i.screenManager.goToMainMenu();
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0318  */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21276y() {
        /*
            Method dump skipped, instructions count: 923
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.screens.LevelSelectScreen.m21276y():void");
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void resize(int i, int i2) {
        super.resize(i, i2);
        if (i > 0 && i2 > 0) {
            m21276y();
        }
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void show() {
        super.show();
        m21278w();
    }

    public LevelSelectScreen(BasicLevel basicLevel) {
        this();
        this.f10733h.m21257o(basicLevel);
        this.f10733h.m21256p(true, false);
    }
}
