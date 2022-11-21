package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.AbilitySlotButton;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.OverlayContinueButton;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.QuadDrawable;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.Locale;
/* renamed from: com.prineside.tdi2.ui.shared.AbilitySelectionOverlay */
/* loaded from: classes2.dex */
public class AbilitySelectionOverlay {

    /* renamed from: a */
    public final UiManager.UiLayer f13908a;

    /* renamed from: b */
    public Runnable f13909b;

    /* renamed from: c */
    public ObjectRetriever<SelectedAbilitiesConfiguration> f13910c;

    /* renamed from: d */
    public Label f13911d;

    /* renamed from: e */
    public Label f13912e;

    /* renamed from: f */
    public Label f13913f;

    /* renamed from: g */
    public Group f13914g;

    /* renamed from: h */
    public Group f13915h;

    /* renamed from: i */
    public Group f13916i;

    /* renamed from: j */
    public Table f13917j;

    /* renamed from: k */
    public ComplexButton f13918k;

    /* renamed from: l */
    public Label f13919l;

    /* renamed from: m */
    public Table f13920m;

    /* renamed from: n */
    public Label f13921n;

    /* renamed from: o */
    public OverlayContinueButton f13922o;

    /* renamed from: p */
    public final Array<AbilityListItem> f13923p;

    /* renamed from: q */
    public boolean f13924q;

    /* renamed from: r */
    public final AbilitySlotButton[] f13925r;

    /* renamed from: s */
    public int f13926s;

    /* renamed from: com.prineside.tdi2.ui.shared.AbilitySelectionOverlay$AbilityListItem */
    /* loaded from: classes2.dex */
    public class AbilityListItem extends Group {

        /* renamed from: M */
        public AbilityType f13934M;

        /* renamed from: N */
        public Image f13935N;

        /* renamed from: O */
        public Image f13936O;

        /* renamed from: P */
        public Label f13937P;

        /* renamed from: Q */
        public Label f13938Q;

        /* renamed from: R */
        public ComplexButton f13939R;

        /* renamed from: S */
        public Label f13940S;

        /* renamed from: T */
        public Table f13941T;

        /* renamed from: U */
        public boolean f13942U;

        public AbilityListItem(final AbilityType abilityType) {
            this.f13934M = abilityType;
            final Ability.Factory<? extends Ability> factory = Game.f8589i.abilityManager.getFactory(abilityType);
            CharSequence description = factory.getDescription(Game.f8589i.gameValueManager.getSnapshot());
            ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(24);
            Color color = Color.WHITE;
            Label label = new Label(description, new Label.LabelStyle(font, color));
            label.setColor(1.0f, 1.0f, 1.0f, 0.78f);
            label.setPosition(96.0f, 8.0f);
            label.setWidth(400.0f);
            label.setWrap(true);
            label.setAlignment(10);
            label.layout();
            label.pack();
            label.setWidth(400.0f);
            if (label.getHeight() < 64.0f) {
                label.setHeight(64.0f);
            }
            float height = label.getHeight() + 64.0f;
            setTransform(false);
            setSize(780.0f, height);
            Image image = new Image(Game.f8589i.assetManager.getBlankWhiteTextureRegion());
            this.f13935N = image;
            image.setSize(780.0f, height);
            addActor(this.f13935N);
            setTouchable(Touchable.enabled);
            addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.AbilitySelectionOverlay.AbilityListItem.1
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f, float f2) {
                    AbilitySelectionOverlay.this.setSelectedSlotAbilityType(abilityType);
                }

                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
                public void enter(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                    super.enter(inputEvent, f, f2, i, actor);
                    AbilityListItem.this.f13942U = isOver();
                    AbilityListItem.this.m20273r();
                }

                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
                public void exit(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                    super.exit(inputEvent, f, f2, i, actor);
                    AbilityListItem.this.f13942U = isOver();
                    AbilityListItem.this.m20273r();
                }
            });
            Image image2 = new Image(Game.f8589i.assetManager.getBlankWhiteTextureRegion());
            this.f13936O = image2;
            image2.setColor(MaterialColor.GREEN.P500);
            this.f13936O.setSize(6.0f, height);
            addActor(this.f13936O);
            Actor image3 = new Image(factory.getIconDrawable());
            image3.setColor(factory.getColor());
            image3.setSize(64.0f, 64.0f);
            image3.setPosition(22.0f, height - 80.0f);
            addActor(image3);
            Actor label2 = new Label(factory.getTitle(), new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color));
            label2.setColor(factory.getColor());
            label2.setPosition(96.0f, height - 53.0f);
            addActor(label2);
            addActor(label);
            Table table = new Table();
            table.setSize(64.0f, 64.0f);
            table.setPosition(450.0f, height - 64.0f);
            addActor(table);
            Label label3 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), color));
            this.f13937P = label3;
            table.add((Table) label3);
            Label label4 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
            this.f13938Q = label4;
            label4.setColor(1.0f, 1.0f, 1.0f, 0.56f);
            table.add((Table) this.f13938Q);
            Actor quadActor = new QuadActor(new Color(0.0f, 0.0f, 0.0f, 0.14f), new float[]{0.0f, 0.0f, 16.0f, height, 156.0f, height, 140.0f, 0.0f});
            quadActor.setPosition(540.0f, 0.0f);
            addActor(quadActor);
            Table table2 = new Table();
            this.f13941T = table2;
            table2.setSize(124.0f, height);
            this.f13941T.setPosition(557.0f, 0.0f);
            addActor(this.f13941T);
            ComplexButton complexButton = new ComplexButton("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color), new Runnable() { // from class: com.prineside.tdi2.ui.shared.AbilitySelectionOverlay.AbilityListItem.2
                @Override // java.lang.Runnable
                public void run() {
                    ResourceType[] resourceTypeArr;
                    ResourceType[] resourceTypeArr2;
                    if (Game.f8589i.progressManager.getAbilities(abilityType) >= Game.f8589i.gameValueManager.getSnapshot().getIntValue(Game.f8589i.abilityManager.getMaxPerGameGameValueType(abilityType))) {
                        return;
                    }
                    int abilities = Game.f8589i.progressManager.getAbilities(abilityType);
                    if (Game.f8589i.progressManager.getGreenPapers() < factory.getPriceInGreenPapers(abilities)) {
                        Game game = Game.f8589i;
                        game.uiManager.dialog.showAlert(game.localeManager.i18n.get("not_enough_green_papers"));
                        return;
                    }
                    for (ResourceType resourceType : ResourceType.values) {
                        if (Game.f8589i.progressManager.getResources(resourceType) < factory.getPriceInResources(resourceType, abilities)) {
                            Game game2 = Game.f8589i;
                            game2.uiManager.dialog.showAlert(game2.localeManager.i18n.get("not_enough_resources"));
                            return;
                        }
                    }
                    Game.f8589i.progressManager.addAbilities(abilityType, 1);
                    Game.f8589i.progressManager.removeGreenPapers(factory.getPriceInGreenPapers(abilities));
                    for (ResourceType resourceType2 : ResourceType.values) {
                        Game.f8589i.progressManager.removeResources(resourceType2, factory.getPriceInResources(resourceType2, abilities));
                    }
                    AbilitySelectionOverlay.this.update();
                }
            });
            this.f13939R = complexButton;
            complexButton.setSize(100.0f, height);
            this.f13939R.setPosition(680.0f, 0.0f);
            this.f13939R.setBackground(new QuadDrawable(new QuadActor(color, new float[]{0.0f, 0.0f, 16.0f, height, 100.0f, height, 100.0f, 0.0f})), 0.0f, 0.0f, 100.0f, height);
            this.f13939R.setIcon(Game.f8589i.assetManager.getDrawable("icon-plus"), 30.0f, (0.5f * height) - 24.0f, 48.0f, 48.0f);
            addActor(this.f13939R);
            Label label5 = new Label("MAX", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
            this.f13940S = label5;
            label5.setPosition(680.0f, 0.0f);
            this.f13940S.setSize(100.0f, height);
            this.f13940S.setAlignment(1);
            addActor(this.f13940S);
            m20273r();
            update();
        }

        /* renamed from: r */
        public final void m20273r() {
            if (this.f13942U && AbilitySelectionOverlay.this.f13926s != -1) {
                this.f13935N.setColor(0.0f, 0.0f, 0.0f, 0.42f);
            } else {
                this.f13935N.setColor(0.0f, 0.0f, 0.0f, 0.21f);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x008d  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x009b  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00b6  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0105  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void update() {
            /*
                Method dump skipped, instructions count: 408
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.p036ui.shared.AbilitySelectionOverlay.AbilityListItem.update():void");
        }
    }

    @REGS
    /* renamed from: com.prineside.tdi2.ui.shared.AbilitySelectionOverlay$SelectedAbilitiesConfiguration */
    /* loaded from: classes2.dex */
    public static class SelectedAbilitiesConfiguration implements KryoSerializable {
        public int[] counts;
        public AbilityType[] slots;

        public SelectedAbilitiesConfiguration() {
            this.slots = new AbilityType[6];
            this.counts = new int[6];
        }

        public int getSlot(AbilityType abilityType) {
            int i = 0;
            while (true) {
                AbilityType[] abilityTypeArr = this.slots;
                if (i < abilityTypeArr.length) {
                    if (abilityTypeArr[i] == abilityType) {
                        return i;
                    }
                    i++;
                } else {
                    return -1;
                }
            }
        }

        public void toJson(Json json) {
            for (int i = 0; i < 6; i++) {
                json.writeObjectStart();
                AbilityType abilityType = this.slots[i];
                if (abilityType != null) {
                    json.writeValue("type", abilityType.name());
                    json.writeValue("count", Integer.valueOf(this.counts[i]));
                }
                json.writeObjectEnd();
            }
        }

        public static SelectedAbilitiesConfiguration fromJson(JsonValue jsonValue) {
            SelectedAbilitiesConfiguration selectedAbilitiesConfiguration = new SelectedAbilitiesConfiguration();
            Iterator<JsonValue> iterator2 = jsonValue.iterator2();
            int i = 0;
            while (iterator2.hasNext()) {
                JsonValue next = iterator2.next();
                if (next.get("type") != null) {
                    try {
                        selectedAbilitiesConfiguration.slots[i] = AbilityType.valueOf(next.getString("type"));
                        selectedAbilitiesConfiguration.counts[i] = next.getInt("count");
                    } catch (Exception e) {
                        Logger.error("AbilitySelectionOverlay", "failed to load configuration slot " + i, e);
                    }
                }
                i++;
            }
            return selectedAbilitiesConfiguration;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.slots = (AbilityType[]) kryo.readObject(input, AbilityType[].class);
            this.counts = (int[]) kryo.readObject(input, int[].class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.slots);
            kryo.writeObject(output, this.counts);
        }

        public SelectedAbilitiesConfiguration(SelectedAbilitiesConfiguration selectedAbilitiesConfiguration) {
            this.slots = new AbilityType[6];
            this.counts = new int[6];
            if (selectedAbilitiesConfiguration == null) {
                return;
            }
            int i = 0;
            while (true) {
                AbilityType[] abilityTypeArr = this.slots;
                if (i >= abilityTypeArr.length) {
                    return;
                }
                abilityTypeArr[i] = selectedAbilitiesConfiguration.slots[i];
                this.counts[i] = selectedAbilitiesConfiguration.counts[i];
                i++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m20277h() {
        this.f13908a.getTable().setVisible(false);
    }

    public boolean isVisible() {
        return this.f13924q;
    }

    public AbilitySelectionOverlay() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, HttpStatus.SC_MULTI_STATUS, "AbilitySelectionOverlay main");
        this.f13908a = addLayer;
        this.f13923p = new Array<>();
        this.f13925r = new AbilitySlotButton[6];
        this.f13926s = -1;
        Group group = new Group();
        group.setTransform(false);
        group.setOrigin(600.0f, 380.0f);
        addLayer.getTable().add((Table) group).size(1200.0f, 760.0f);
        Group group2 = new Group();
        this.f13914g = group2;
        group2.setTransform(true);
        this.f13914g.setOrigin(600.0f, 380.0f);
        this.f13914g.setSize(1200.0f, 760.0f);
        group.addActor(this.f13914g);
        this.f13914g.addActor(new QuadActor(new Color(791621631), new float[]{0.0f, 22.0f, 10.0f, 748.0f, 1200.0f, 760.0f, 1200.0f, 0.0f}));
        Label label = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), Color.WHITE));
        this.f13911d = label;
        label.setPosition(60.0f, 666.0f);
        this.f13911d.setSize(300.0f, 27.0f);
        this.f13914g.addActor(this.f13911d);
        ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.AbilitySelectionOverlay.1
            @Override // java.lang.Runnable
            public void run() {
                if (Game.f8589i.progressManager.getItemsCount(Item.C1543D.ABILITY_TOKEN) <= 0) {
                    Game game = Game.f8589i;
                    game.uiManager.dialog.showAlert(game.localeManager.i18n.get("not_enough_tokens"));
                    return;
                }
                Game game2 = Game.f8589i;
                game2.uiManager.dialog.showConfirm(game2.localeManager.i18n.get("ability_selection_token_confirm"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.AbilitySelectionOverlay.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AbilityType[] abilityTypeArr;
                        int intValue;
                        int abilities;
                        boolean z = false;
                        for (AbilityType abilityType : AbilityType.values) {
                            if (Game.f8589i.gameValueManager.getSnapshot().getIntValue(Game.f8589i.abilityManager.getMaxPerGameGameValueType(abilityType)) != 0 && (abilities = Game.f8589i.progressManager.getAbilities(abilityType)) < (intValue = Game.f8589i.gameValueManager.getSnapshot().getIntValue(Game.f8589i.abilityManager.getMaxPerGameGameValueType(abilityType)))) {
                                Game.f8589i.progressManager.addAbilities(abilityType, intValue - abilities);
                                z = true;
                            }
                        }
                        if (z) {
                            Game.f8589i.actionResolver.logCurrencySpent(null, "ability_token", 1);
                            Game.f8589i.progressManager.removeItems(Item.C1543D.ABILITY_TOKEN, 1);
                            AbilitySelectionOverlay.this.update();
                            return;
                        }
                        Game game3 = Game.f8589i;
                        game3.uiManager.dialog.showAlert(game3.localeManager.i18n.get("all_abilities_are_already_purchased"));
                    }
                });
            }
        });
        this.f13918k = complexButton;
        complexButton.setBackground(Game.f8589i.assetManager.getDrawable("ui-ability-selection-token-button"), 0.0f, 0.0f, 158.0f, 79.0f);
        this.f13918k.setSize(158.0f, 79.0f);
        this.f13918k.setPosition(-7.0f, 550.0f);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("ability-token"));
        image.setPosition(42.0f, 12.0f);
        image.setSize(64.0f, 64.0f);
        image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
        this.f13918k.addActor(image);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("ability-token"));
        image2.setPosition(40.0f, 14.0f);
        image2.setSize(64.0f, 64.0f);
        this.f13918k.addActor(image2);
        Label label2 = new Label("0", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13921n = label2;
        label2.setPosition(105.0f, 20.0f);
        this.f13921n.setSize(2.0f, 21.0f);
        this.f13921n.setAlignment(1);
        this.f13921n.setColor(0.0f, 0.0f, 0.0f, 0.28f);
        this.f13918k.addActor(this.f13921n);
        Label label3 = new Label("0", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13919l = label3;
        label3.setPosition(103.0f, 22.0f);
        this.f13919l.setSize(2.0f, 21.0f);
        this.f13919l.setAlignment(1);
        this.f13918k.addActor(this.f13919l);
        this.f13914g.addActor(this.f13918k);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-info-circle"));
        image3.setSize(48.0f, 48.0f);
        image3.setPosition(168.0f, 565.0f);
        image3.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        image3.setTouchable(Touchable.enabled);
        image3.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.AbilitySelectionOverlay.2
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                AbilityType[] abilityTypeArr;
                ResourceType[] resourceTypeArr;
                ResourceType[] resourceTypeArr2;
                int[] iArr = new int[ResourceType.values.length];
                int i = 0;
                for (AbilityType abilityType : AbilityType.values) {
                    if (Game.f8589i.gameValueManager.getSnapshot().getIntValue(Game.f8589i.abilityManager.getMaxPerGameGameValueType(abilityType)) != 0) {
                        int intValue = Game.f8589i.gameValueManager.getSnapshot().getIntValue(Game.f8589i.abilityManager.getMaxPerGameGameValueType(abilityType));
                        for (int abilities = Game.f8589i.progressManager.getAbilities(abilityType); abilities < intValue; abilities++) {
                            Ability.Factory<? extends Ability> factory = Game.f8589i.abilityManager.getFactory(abilityType);
                            i += factory.getPriceInGreenPapers(abilities);
                            for (ResourceType resourceType : ResourceType.values) {
                                int ordinal = resourceType.ordinal();
                                iArr[ordinal] = iArr[ordinal] + factory.getPriceInResources(resourceType, abilities);
                            }
                        }
                    }
                }
                StringBuilder sb = new StringBuilder("[#81C784]<@icon-money>" + ((Object) StringFormatter.commaSeparatedNumber(i)) + "[]");
                for (ResourceType resourceType2 : ResourceType.values) {
                    if (iArr[resourceType2.ordinal()] > 0) {
                        sb.append("  [#");
                        sb.append(Game.f8589i.resourceManager.getColor(resourceType2).toString());
                        sb.append("]<@resource-");
                        sb.append(resourceType2.name().toLowerCase(Locale.ENGLISH));
                        sb.append(">");
                        sb.append((CharSequence) StringFormatter.commaSeparatedNumber(iArr[resourceType2.ordinal()]));
                        sb.append("[]");
                    }
                }
                Game.f8589i.uiManager.dialog.showAlert(Game.f8589i.localeManager.i18n.format("ability_selection_token_hint", sb.toString()));
            }
        });
        this.f13914g.addActor(image3);
        final int i = 0;
        for (int i2 = 6; i < i2; i2 = 6) {
            this.f13925r[i] = new AbilitySlotButton(true, Game.f8589i.gameValueManager.getSnapshot());
            int i3 = i % 2;
            this.f13925r[i].setPosition((i3 * 128.0f) + 60.0f, ((((i / 2) * 128.0f) + 172.0f) + ((1 - i3) * 10.0f)) - 40.0f);
            this.f13914g.addActor(this.f13925r[i]);
            this.f13925r[i].addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.AbilitySelectionOverlay.3
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f, float f2) {
                    int i4 = AbilitySelectionOverlay.this.f13926s;
                    int i5 = i;
                    if (i4 == i5) {
                        AbilitySelectionOverlay.this.selectSlot(-1);
                    } else {
                        AbilitySelectionOverlay.this.selectSlot(i5);
                    }
                    Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                }
            });
            i++;
        }
        Table table = new Table();
        this.f13917j = table;
        table.setWidth(780.0f);
        ScrollPane scrollPane = new ScrollPane(this.f13917j);
        scrollPane.setSize(780.0f, 642.0f);
        scrollPane.setPosition(358.0f, 52.0f);
        this.f13914g.addActor(scrollPane);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("gradient-top"));
        image4.setColor(new Color(791621631));
        image4.setSize(780.0f, 64.0f);
        image4.setPosition(358.0f, 631.0f);
        Touchable touchable = Touchable.disabled;
        image4.setTouchable(touchable);
        this.f13914g.addActor(image4);
        Image image5 = new Image(Game.f8589i.assetManager.getDrawable("gradient-bottom"));
        image5.setColor(new Color(791621631));
        image5.setSize(780.0f, 64.0f);
        image5.setPosition(358.0f, 51.0f);
        image5.setTouchable(touchable);
        this.f13914g.addActor(image5);
        Group group3 = new Group();
        this.f13915h = group3;
        group3.setTransform(false);
        this.f13915h.setPosition(155.0f, 50.0f);
        this.f13915h.setSize(280.0f, 64.0f);
        this.f13915h.setTouchable(touchable);
        this.f13914g.addActor(this.f13915h);
        Image image6 = new Image(Game.f8589i.assetManager.getDrawable("icon-arrow-pointer-top-left"));
        image6.setSize(64.0f, 64.0f);
        image6.setPosition(0.0f, 0.0f);
        this.f13915h.addActor(image6);
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(24);
        Color color = Color.WHITE;
        Label label4 = new Label("", new Label.LabelStyle(font, color));
        this.f13912e = label4;
        label4.setPosition(80.0f, 0.0f);
        this.f13915h.addActor(this.f13912e);
        this.f13915h.setVisible(false);
        Group group4 = new Group();
        this.f13916i = group4;
        group4.setTransform(false);
        this.f13916i.setPosition(240.0f, 50.0f);
        this.f13916i.setSize(380.0f, 64.0f);
        this.f13914g.addActor(this.f13916i);
        Image image7 = new Image(Game.f8589i.assetManager.getDrawable("icon-arrow-pointer-top-right"));
        image7.setSize(64.0f, 64.0f);
        image7.setPosition(316.0f, 0.0f);
        this.f13916i.addActor(image7);
        Label label5 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f13913f = label5;
        label5.setPosition(0.0f, 0.0f);
        this.f13913f.setSize(296.0f, 20.0f);
        this.f13913f.setAlignment(16);
        this.f13916i.addActor(this.f13913f);
        OverlayContinueButton overlayContinueButton = new OverlayContinueButton("", "icon-triangle-right", MaterialColor.LIGHT_BLUE.P800, MaterialColor.LIGHT_BLUE.P900, MaterialColor.LIGHT_BLUE.P700, new Runnable() { // from class: com.prineside.tdi2.ui.shared.AbilitySelectionOverlay.4
            @Override // java.lang.Runnable
            public void run() {
                if (AbilitySelectionOverlay.this.f13910c != null) {
                    SelectedAbilitiesConfiguration m20278g = AbilitySelectionOverlay.this.m20278g();
                    AbilitySelectionOverlay.this.m20276i(m20278g);
                    AbilitySelectionOverlay.this.f13910c.retrieved(m20278g);
                }
                AbilitySelectionOverlay.this.setVisible(false);
            }
        });
        this.f13922o = overlayContinueButton;
        overlayContinueButton.setPosition(812.0f, -13.0f);
        this.f13914g.addActor(this.f13922o);
        Table table2 = new Table();
        this.f13920m = table2;
        table2.setSize(376.0f, 64.0f);
        this.f13920m.setPosition(812.0f, -77.0f);
        this.f13920m.setTouchable(Touchable.enabled);
        this.f13920m.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.AbilitySelectionOverlay.5
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                Game game = Game.f8589i;
                game.uiManager.dialog.showAlert(game.localeManager.i18n.format("max_encrypted_cases_alert", new Object[0]));
            }
        });
        this.f13914g.addActor(this.f13920m);
        this.f13920m.addAction(Actions.forever(Actions.sequence(Actions.alpha(0.8f, 0.5f), Actions.alpha(1.0f, 0.5f))));
        this.f13920m.add().height(1.0f).expandX().fillX();
        Label label6 = new Label(Game.f8589i.localeManager.i18n.get("max_encrypted_cases_warning"), Game.f8589i.assetManager.getLabelStyle(24));
        Color color2 = MaterialColor.ORANGE.P500;
        label6.setColor(color2);
        this.f13920m.add((Table) label6);
        Image image8 = new Image(Game.f8589i.assetManager.getDrawable("icon-exclamation-triangle"));
        image8.setColor(color2);
        this.f13920m.add((Table) image8).size(32.0f).padLeft(8.0f);
        this.f13908a.getTable().setVisible(false);
        this.f13924q = false;
    }

    /* renamed from: g */
    public final SelectedAbilitiesConfiguration m20278g() {
        AbilitySlotButton[] abilitySlotButtonArr;
        SelectedAbilitiesConfiguration selectedAbilitiesConfiguration = new SelectedAbilitiesConfiguration();
        int i = 0;
        for (AbilitySlotButton abilitySlotButton : this.f13925r) {
            if (abilitySlotButton.getAbility() != null) {
                selectedAbilitiesConfiguration.slots[i] = abilitySlotButton.getAbility();
                selectedAbilitiesConfiguration.counts[i] = Game.f8589i.progressManager.getAbilities(abilitySlotButton.getAbility());
            }
            i++;
        }
        return selectedAbilitiesConfiguration;
    }

    public void hide() {
        if (this.f13909b != null) {
            m20276i(m20278g());
            this.f13909b.run();
        }
        setVisible(false);
        this.f13909b = null;
        this.f13910c = null;
    }

    /* renamed from: i */
    public final void m20276i(SelectedAbilitiesConfiguration selectedAbilitiesConfiguration) {
        Json json = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeArrayStart();
        int i = 0;
        while (true) {
            AbilityType[] abilityTypeArr = selectedAbilitiesConfiguration.slots;
            if (i < abilityTypeArr.length) {
                AbilityType abilityType = abilityTypeArr[i];
                if (abilityType == null) {
                    json.writeValue(Boolean.FALSE);
                } else {
                    json.writeValue(abilityType.name());
                }
                i++;
            } else {
                json.writeArrayEnd();
                PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
                preferencesManager.set("lastAbilitiesConfiguration", stringWriter.toString());
                preferencesManager.flush();
                return;
            }
        }
    }

    public void selectSlot(int i) {
        for (AbilitySlotButton abilitySlotButton : this.f13925r) {
            abilitySlotButton.setSelected(false);
        }
        if (i != -1) {
            this.f13925r[i].setSelected(true);
            this.f13915h.setVisible(false);
            this.f13916i.setVisible(true);
        } else {
            this.f13915h.setVisible(true);
            this.f13916i.setVisible(false);
        }
        this.f13926s = i;
        update();
    }

    public void setSelectedSlotAbilityType(AbilityType abilityType) {
        AbilitySlotButton[] abilitySlotButtonArr;
        if (this.f13926s == -1) {
            return;
        }
        for (AbilitySlotButton abilitySlotButton : this.f13925r) {
            if (abilitySlotButton.getAbility() == abilityType) {
                abilitySlotButton.setAbility(null);
            }
        }
        this.f13925r[this.f13926s].setAbility(abilityType);
        selectSlot(-1);
    }

    public void setVisible(boolean z) {
        float f;
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        if (z) {
            Game.f8589i.uiManager.darkOverlay.addCaller("AbilitySelectionOverlay", UiManager.MainUiLayer.SCREEN, HttpStatus.SC_PARTIAL_CONTENT, new Runnable() { // from class: com.prineside.tdi2.ui.shared.a
                @Override // java.lang.Runnable
                public final void run() {
                    AbilitySelectionOverlay.this.hide();
                }
            });
            this.f13908a.getTable().setVisible(true);
            this.f13908a.getTable().setTouchable(Touchable.childrenOnly);
            this.f13914g.clearActions();
            this.f13914g.addAction(Actions.sequence(Actions.scaleTo(1.0f, 1.0f), Actions.moveTo(Game.f8589i.settingsManager.getScaledViewportHeight() * 2.0f, 0.0f), Actions.moveTo(0.0f, 0.0f, f * 0.2f)));
        } else {
            Game.f8589i.uiManager.darkOverlay.removeCaller("AbilitySelectionOverlay");
            this.f13908a.getTable().setTouchable(Touchable.disabled);
            this.f13914g.clearActions();
            this.f13914g.addAction(Actions.sequence(Actions.moveTo(Game.f8589i.settingsManager.getScaledViewportHeight() * 2.0f, 0.0f, f * 0.2f), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.shared.b
                @Override // java.lang.Runnable
                public final void run() {
                    AbilitySelectionOverlay.this.m20277h();
                }
            })));
        }
        this.f13924q = z;
    }

    public void show(Runnable runnable, ObjectRetriever<SelectedAbilitiesConfiguration> objectRetriever) {
        AbilityType[] abilityTypeArr;
        this.f13909b = runnable;
        this.f13910c = objectRetriever;
        this.f13911d.setText(Game.f8589i.localeManager.i18n.get("select_abilities"));
        this.f13912e.setText(Game.f8589i.localeManager.i18n.get("tap_to_select_slot"));
        this.f13913f.setText(Game.f8589i.localeManager.i18n.get("choose_ability_for_slot"));
        this.f13922o.label.setText(Game.f8589i.localeManager.i18n.get("play"));
        setVisible(true);
        for (AbilitySlotButton abilitySlotButton : this.f13925r) {
            abilitySlotButton.setAbility(null);
        }
        String str = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS).get("lastAbilitiesConfiguration", null);
        if (str != null) {
            try {
                Iterator<JsonValue> iterator2 = new JsonReader().parse(str).iterator2();
                int i = 0;
                while (iterator2.hasNext()) {
                    JsonValue next = iterator2.next();
                    if (next.type() == JsonValue.ValueType.stringValue) {
                        this.f13925r[i].setAbility(AbilityType.valueOf(next.asString()));
                    }
                    i++;
                    if (i == 6) {
                        break;
                    }
                }
            } catch (Exception e) {
                Logger.error("AbilitySelectionOverlay", "failed to load previous abilities configuration", e);
            }
        }
        this.f13917j.clear();
        this.f13917j.add().expandX().height(64.0f).row();
        this.f13923p.clear();
        for (AbilityType abilityType : AbilityType.values) {
            if (Game.f8589i.gameValueManager.getSnapshot().getIntValue(Game.f8589i.abilityManager.getMaxPerGameGameValueType(abilityType)) != 0) {
                AbilityListItem abilityListItem = new AbilityListItem(abilityType);
                this.f13923p.add(abilityListItem);
                this.f13917j.add((Table) abilityListItem).size(780.0f, abilityListItem.getHeight()).padBottom(4.0f).row();
            }
        }
        this.f13917j.add().expandX().height(64.0f).row();
        this.f13917j.add().expand();
        selectSlot(-1);
        update();
    }

    public void update() {
        AbilitySlotButton[] abilitySlotButtonArr;
        int itemsCount = Game.f8589i.progressManager.getItemsCount(Item.C1543D.ABILITY_TOKEN);
        this.f13921n.setText(itemsCount + "");
        this.f13919l.setText(itemsCount + "");
        if (itemsCount <= 0) {
            ComplexButton complexButton = this.f13918k;
            Color color = MaterialColor.GREY.P800;
            complexButton.setBackgroundColors(color, color, color, color);
        } else {
            this.f13918k.setBackgroundColors(MaterialColor.LIGHT_BLUE.P800, MaterialColor.LIGHT_BLUE.P900, MaterialColor.LIGHT_BLUE.P700, MaterialColor.GREY.P800);
        }
        for (AbilitySlotButton abilitySlotButton : this.f13925r) {
            if (abilitySlotButton.getAbility() != null) {
                abilitySlotButton.setCount(Game.f8589i.progressManager.getAbilities(abilitySlotButton.getAbility()));
            }
        }
        int i = 0;
        while (true) {
            Array<AbilityListItem> array = this.f13923p;
            if (i >= array.size) {
                break;
            }
            array.get(i).update();
            i++;
        }
        if (Game.f8589i.progressManager.getEncryptedCasesCount() >= Game.f8589i.progressManager.getMaxEncryptedCasesInInventory()) {
            this.f13920m.setVisible(true);
        } else {
            this.f13920m.setVisible(false);
        }
    }
}
