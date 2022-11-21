package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.actions.DelayAction;
import com.badlogic.gdx.scenes.scene2d.actions.ScaleToAction;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.managers.AuthManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.LimitedWidthLabel;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.shared.ProfileSummary;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.QuadDrawable;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
/* renamed from: com.prineside.tdi2.ui.shared.ProfileSummary */
/* loaded from: classes2.dex */
public class ProfileSummary {

    /* renamed from: B */
    public static final StringBuilder f14821B = new StringBuilder();

    /* renamed from: A */
    public int f14822A;

    /* renamed from: a */
    public int f14823a;

    /* renamed from: b */
    public int f14824b;

    /* renamed from: c */
    public final UiManager.UiLayer f14825c;

    /* renamed from: d */
    public final Group f14826d;

    /* renamed from: e */
    public final Image f14827e;

    /* renamed from: f */
    public final Image f14828f;

    /* renamed from: g */
    public final LimitedWidthLabel f14829g;

    /* renamed from: h */
    public final Actor f14830h;

    /* renamed from: i */
    public final Label f14831i;

    /* renamed from: j */
    public final Label f14832j;

    /* renamed from: k */
    public final Group f14833k;

    /* renamed from: l */
    public final Image f14834l;

    /* renamed from: m */
    public final Group f14835m;

    /* renamed from: n */
    public final Image f14836n;

    /* renamed from: o */
    public final Group f14837o;

    /* renamed from: p */
    public final Image f14838p;

    /* renamed from: q */
    public final Label f14839q;

    /* renamed from: r */
    public final Image f14840r;

    /* renamed from: s */
    public final Label f14841s;

    /* renamed from: t */
    public final Table f14842t;

    /* renamed from: u */
    public Label f14843u;

    /* renamed from: v */
    public final ComplexButton f14844v;

    /* renamed from: w */
    public AnimationStage f14845w;

    /* renamed from: x */
    public final Array<AnimationStage> f14846x = new Array<>(true, 1, AnimationStage.class);

    /* renamed from: y */
    public boolean f14847y;

    /* renamed from: z */
    public boolean f14848z;

    /* renamed from: com.prineside.tdi2.ui.shared.ProfileSummary$AnimationGiveXpStage */
    /* loaded from: classes2.dex */
    public class AnimationGiveXpStage extends AnimationStage {
        public int baseXpLine;
        public int endBaseXpLabel;
        public int endBonusXpLabel;
        public int endBonusXpLine;
        public int endRegularXpLabel;
        public int endRegularXpLine;
        public boolean fadeInBonus;
        public int startBaseXpLabel;
        public int startBonusXpLabel;
        public int startBonusXpLine;
        public int startRegularXpLabel;
        public int startRegularXpLine;

        public AnimationGiveXpStage() {
            super();
            this.duration = 1000000L;
        }

        @Override // com.prineside.tdi2.p036ui.shared.ProfileSummary.AnimationStage
        public void draw(float f) {
            float f2 = 162.0f / Game.f8589i.authManager.nextLevelXp;
            ProfileSummary.this.f14836n.setWidth(this.baseXpLine * f2);
            int i = this.startRegularXpLine;
            ProfileSummary.this.f14838p.setWidth((i + ((this.endRegularXpLine - i) * f)) * f2);
            ProfileSummary.this.f14838p.setPosition(ProfileSummary.this.f14836n.getWidth(), 0.0f);
            Image image = ProfileSummary.this.f14840r;
            int i2 = this.startBonusXpLine;
            image.setWidth((i2 + ((this.endBonusXpLine - i2) * f)) * f2);
            ProfileSummary.this.f14840r.setPosition(ProfileSummary.this.f14836n.getWidth() + ProfileSummary.this.f14838p.getWidth(), 0.0f);
            int i3 = this.startBaseXpLabel;
            int i4 = (int) (i3 + ((this.endBaseXpLabel - i3) * f));
            ProfileSummary.f14821B.setLength(0);
            ProfileSummary.f14821B.append(i4).append(" / ").append(Game.f8589i.authManager.nextLevelXp).append(" XP");
            ProfileSummary.this.f14832j.setText(ProfileSummary.f14821B);
            int i5 = this.startRegularXpLabel;
            int i6 = (int) (i5 + ((this.endRegularXpLabel - i5) * f));
            ProfileSummary.f14821B.setLength(0);
            ProfileSummary.f14821B.append("+").append(i6).append(" XP");
            ProfileSummary.this.f14839q.setText(ProfileSummary.f14821B);
            int i7 = this.startBonusXpLabel;
            ProfileSummary.f14821B.setLength(0);
            ProfileSummary.f14821B.append("+").append((int) (i7 + ((this.endBonusXpLabel - i7) * f))).append(" bonus XP");
            ProfileSummary.this.f14841s.setText(ProfileSummary.f14821B);
        }

        @Override // com.prineside.tdi2.p036ui.shared.ProfileSummary.AnimationStage
        public void start() {
            ProfileSummary.this.f14839q.setVisible(true);
            ProfileSummary.f14821B.setLength(0);
            ProfileSummary.f14821B.append("+").append(this.startRegularXpLabel).append(" XP");
            ProfileSummary.this.f14839q.setText(ProfileSummary.f14821B);
            ProfileSummary.f14821B.setLength(0);
            ProfileSummary.f14821B.append("+").append(this.startBonusXpLabel).append(" bonus XP");
            ProfileSummary.this.f14841s.setText(ProfileSummary.f14821B);
            if (this.fadeInBonus) {
                ProfileSummary.this.f14841s.setVisible(true);
                ProfileSummary.this.f14839q.clearActions();
                ProfileSummary.this.f14839q.addAction(Actions.parallel(Actions.color(new Color(1.0f, 1.0f, 1.0f, 0.36f), 0.3f), Actions.moveTo(242.0f, 31.0f, 0.3f)));
            }
            ProfileSummary.this.f14836n.setVisible(true);
            ProfileSummary.this.f14836n.setColor(Color.WHITE);
            ProfileSummary.this.f14838p.setVisible(true);
            ProfileSummary.this.f14838p.setColor(MaterialColor.AMBER.P500);
            ProfileSummary.this.f14840r.setVisible(true);
            ProfileSummary.this.f14840r.setColor(MaterialColor.LIGHT_GREEN.P500);
        }
    }

    /* renamed from: com.prineside.tdi2.ui.shared.ProfileSummary$AnimationLevelUpStage */
    /* loaded from: classes2.dex */
    public class AnimationLevelUpStage extends AnimationStage {
        public int newLevel;

        public AnimationLevelUpStage() {
            super();
            this.duration = 500000L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: e */
        public /* synthetic */ void m19892e() {
            ProfileSummary.this.f14833k.clearChildren();
            Array<TextureRegionConfig> profileLevelTextures = Game.f8589i.authManager.getProfileLevelTextures(this.newLevel);
            for (int i = 0; i < profileLevelTextures.size; i++) {
                ProfileSummary.this.f14833k.addActor(profileLevelTextures.items[i].createImage(0.0f, 0.0f, 48.0f));
            }
        }

        @Override // com.prineside.tdi2.p036ui.shared.ProfileSummary.AnimationStage
        public void start() {
            float f = ((float) this.duration) / 1000000.0f;
            ProfileSummary.this.f14836n.clearActions();
            float f2 = 0.5f * f;
            float f3 = 0.3f * f;
            ProfileSummary.this.f14836n.addAction(Actions.sequence(Actions.delay(f2), Actions.fadeOut(f3)));
            ProfileSummary.this.f14840r.clearActions();
            ProfileSummary.this.f14840r.addAction(Actions.sequence(Actions.delay(f2), Actions.fadeOut(f3)));
            ProfileSummary.this.f14838p.clearActions();
            ProfileSummary.this.f14838p.addAction(Actions.sequence(Actions.delay(f2), Actions.fadeOut(f3)));
            ProfileSummary.this.f14833k.clearActions();
            Group group = ProfileSummary.this.f14833k;
            float f4 = f * 0.25f;
            Interpolation.PowIn powIn = Interpolation.pow2In;
            group.addAction(Actions.sequence(Actions.delay(f2), Actions.scaleTo(0.0f, 0.0f, f4), Actions.alpha(0.0f), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.shared.s1
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileSummary.AnimationLevelUpStage.this.m19892e();
                }
            }), Actions.scaleTo(2.0f, 2.0f), Actions.parallel(Actions.scaleTo(1.0f, 1.0f, f4, powIn), Actions.alpha(1.0f, f4, powIn))));
        }
    }

    /* renamed from: com.prineside.tdi2.ui.shared.ProfileSummary$AnimationStage */
    /* loaded from: classes2.dex */
    public static abstract class AnimationStage {

        /* renamed from: a */
        public long f14855a;
        public long duration;

        public AnimationStage() {
        }

        /* renamed from: c */
        public static /* synthetic */ long m19889c(AnimationStage animationStage, long j) {
            long j2 = animationStage.f14855a + j;
            animationStage.f14855a = j2;
            return j2;
        }

        public void draw(float f) {
        }

        public void start() {
        }
    }

    /* renamed from: o */
    public static /* synthetic */ void m19897o() {
        Game.f8589i.authManager.requestOfMeritPrestige();
    }

    public ProfileSummary setVisible(boolean z) {
        return setVisible(z, true);
    }

    public ProfileSummary() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SHARED_COMPONENTS, 100, "ProfileSummary");
        this.f14825c = addLayer;
        Table table = addLayer.getTable();
        Group group = new Group();
        group.setTransform(false);
        table.add((Table) group).expand().top().left().size(226.0f, 100.0f).padTop(44.0f).padLeft(40.0f);
        Group group2 = new Group();
        this.f14826d = group2;
        group2.setTransform(false);
        group2.setSize(226.0f, 100.0f);
        group.addActor(group2);
        Group group3 = new Group();
        this.f14837o = group3;
        group3.setTransform(false);
        group3.setTouchable(Touchable.disabled);
        group3.setSize(226.0f, 100.0f);
        group.addActor(group3);
        Image image = new Image();
        this.f14827e = image;
        image.setSize(48.0f, 48.0f);
        image.setPosition(0.0f, 52.0f);
        group2.addActor(image);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("player-profile-avatar-frame"));
        this.f14828f = image2;
        image2.setSize(54.0f, 54.0f);
        image2.setPosition(-3.0f, 49.0f);
        image2.setColor(new Color(269488383));
        group2.addActor(image2);
        LimitedWidthLabel limitedWidthLabel = new LimitedWidthLabel("", 30, 24, 380.0f);
        this.f14829g = limitedWidthLabel;
        limitedWidthLabel.setSize(162.0f, 48.0f);
        limitedWidthLabel.setPosition(64.0f, 52.0f);
        group2.addActor(limitedWidthLabel);
        Group group4 = new Group();
        this.f14835m = group4;
        group4.setTransform(false);
        group4.setSize(226.0f, 48.0f);
        Touchable touchable = Touchable.enabled;
        group4.setTouchable(touchable);
        group4.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.ProfileSummary.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                ProfileSummary.this.toggleXpInfoDropdown();
            }
        });
        group2.addActor(group4);
        Group group5 = new Group();
        this.f14833k = group5;
        group5.setTransform(false);
        group5.setSize(48.0f, 48.0f);
        group5.setOrigin(24.0f, 24.0f);
        group4.addActor(group5);
        Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
        this.f14832j = label;
        label.setPosition(64.0f, 24.0f);
        label.setSize(100.0f, 16.0f);
        label.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        group4.addActor(label);
        Group group6 = new Group();
        group6.setTransform(false);
        group6.setPosition(64.0f, 10.0f);
        group6.setSize(162.0f, 8.0f);
        group4.addActor(group6);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image3.setSize(162.0f, 8.0f);
        image3.setColor(1.0f, 1.0f, 1.0f, 0.21f);
        group6.addActor(image3);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        this.f14836n = image4;
        group6.addActor(image4);
        Image image5 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        this.f14838p = image5;
        Color color = MaterialColor.AMBER.P500;
        image5.setColor(color);
        image5.setSize(0.0f, 8.0f);
        group6.addActor(image5);
        Image image6 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        this.f14840r = image6;
        Color color2 = MaterialColor.LIGHT_GREEN.P500;
        image6.setColor(color2);
        image6.setSize(0.0f, 8.0f);
        group6.addActor(image6);
        Label label2 = new Label("+0 XP", Game.f8589i.assetManager.getLabelStyle(21));
        this.f14839q = label2;
        label2.setSize(100.0f, 16.0f);
        label2.setPosition(242.0f, 11.0f);
        label2.setColor(color);
        group3.addActor(label2);
        Label label3 = new Label("+0 bonus XP", Game.f8589i.assetManager.getLabelStyle(21));
        this.f14841s = label3;
        label3.setSize(100.0f, 16.0f);
        label3.setPosition(242.0f, 11.0f);
        label3.setColor(color2);
        group3.addActor(label3);
        Image image7 = new Image();
        this.f14834l = image7;
        image7.setPosition(207.0f, 22.0f);
        image7.setSize(20.0f, 20.0f);
        group4.addActor(image7);
        Actor actor = new Actor();
        this.f14830h = actor;
        actor.setPosition(-40.0f, 48.0f);
        actor.setSize(266.0f, 92.0f);
        actor.setTouchable(touchable);
        actor.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.ProfileSummary.2
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                Game.f8589i.screenManager.goToAccountScreen();
            }
        });
        group2.addActor(actor);
        Label label4 = new Label(Game.f8589i.localeManager.i18n.get("tap_here_to_sign_in"), Game.f8589i.assetManager.getLabelStyle(21));
        this.f14831i = label4;
        label4.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        label4.setSize(100.0f, 16.0f);
        label4.setPosition(64.0f, 40.0f);
        group2.addActor(label4);
        Table table2 = new Table();
        this.f14842t = table2;
        table2.setPosition(64.0f, -140.0f);
        table2.setSize(386.0f, 140.0f);
        table2.setBackground(Game.f8589i.assetManager.getDrawable("blank").tint(new Color(128)));
        table2.setTouchable(touchable);
        table2.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.ProfileSummary.3
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                ProfileSummary.this.toggleXpInfoDropdown();
            }
        });
        group2.addActor(table2);
        ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.q1
            @Override // java.lang.Runnable
            public final void run() {
                ProfileSummary.m19896p();
            }
        });
        this.f14844v = complexButton;
        complexButton.setBackgroundColors(MaterialColor.LIGHT_GREEN.P800, MaterialColor.LIGHT_GREEN.P900, MaterialColor.LIGHT_GREEN.P700, Color.GRAY);
        complexButton.setPosition(246.0f, -8.0f);
        complexButton.setSize(80.0f, 64.0f);
        complexButton.setBackground(new QuadDrawable(new QuadActor(Color.WHITE, new float[]{5.0f, 2.0f, 0.0f, 62.0f, 80.0f, 64.0f, 75.0f, 0.0f})), 0.0f, 0.0f, 80.0f, 64.0f);
        complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-star"), 16.0f, 8.0f, 48.0f, 48.0f);
        group2.addActor(complexButton);
        complexButton.setVisible(false);
        setVisible(false);
        Game.f8589i.authManager.addListener(new AuthManager.AuthManagerListener.AuthManagerListenerAdapter() { // from class: com.prineside.tdi2.ui.shared.ProfileSummary.4
            @Override // com.prineside.tdi2.managers.AuthManager.AuthManagerListener.AuthManagerListenerAdapter, com.prineside.tdi2.managers.AuthManager.AuthManagerListener
            public void stateUpdated() {
                if (ProfileSummary.this.f14847y && ProfileSummary.this.f14846x.size == 0 && ProfileSummary.this.f14845w == null) {
                    ProfileSummary.this.update();
                }
            }
        });
    }

    /* renamed from: p */
    public static /* synthetic */ void m19896p() {
        Game game = Game.f8589i;
        Game.f8589i.uiManager.dialog.showConfirm(game.localeManager.i18n.format("of_merit_prestige_confirm", Integer.valueOf(game.authManager.maxProfileLevel)), new Runnable() { // from class: com.prineside.tdi2.ui.shared.r1
            @Override // java.lang.Runnable
            public final void run() {
                ProfileSummary.m19897o();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public /* synthetic */ void m19895q(int i, int i2) {
        this.f14826d.setTransform(false);
        int i3 = this.f14823a;
        int i4 = Game.f8589i.authManager.nextLevelXp;
        int i5 = this.f14824b;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        boolean z = false;
        while (true) {
            if (i <= 0 && i2 <= 0) {
                return;
            }
            if (i > 0) {
                int i9 = i5 + i;
                if (i9 < i4) {
                    AnimationGiveXpStage animationGiveXpStage = new AnimationGiveXpStage();
                    animationGiveXpStage.baseXpLine = i5;
                    animationGiveXpStage.startRegularXpLine = 0;
                    animationGiveXpStage.endRegularXpLine = i;
                    animationGiveXpStage.startBaseXpLabel = i5;
                    animationGiveXpStage.endBaseXpLabel = i9;
                    animationGiveXpStage.startRegularXpLabel = i7;
                    i7 += i;
                    animationGiveXpStage.endRegularXpLabel = i7;
                    this.f14846x.add(animationGiveXpStage);
                    i6 = i;
                    i = 0;
                } else {
                    i6 = i4 - i5;
                    AnimationGiveXpStage animationGiveXpStage2 = new AnimationGiveXpStage();
                    animationGiveXpStage2.baseXpLine = i5;
                    animationGiveXpStage2.startRegularXpLine = 0;
                    animationGiveXpStage2.endRegularXpLine = i6;
                    animationGiveXpStage2.startBaseXpLabel = i5;
                    animationGiveXpStage2.endBaseXpLabel = i5 + i6;
                    animationGiveXpStage2.startRegularXpLabel = i7;
                    i7 += i6;
                    animationGiveXpStage2.endRegularXpLabel = i7;
                    this.f14846x.add(animationGiveXpStage2);
                    AnimationLevelUpStage animationLevelUpStage = new AnimationLevelUpStage();
                    i3++;
                    int i10 = Game.f8589i.authManager.maxProfileLevel;
                    if (i3 > i10) {
                        i3 = i10;
                    }
                    animationLevelUpStage.newLevel = i3;
                    this.f14846x.add(animationLevelUpStage);
                    i -= i6;
                    i5 = 0;
                }
            } else {
                int i11 = i5 + i6;
                int i12 = i11 + i2;
                if (i12 < i4) {
                    AnimationGiveXpStage animationGiveXpStage3 = new AnimationGiveXpStage();
                    animationGiveXpStage3.baseXpLine = i5;
                    animationGiveXpStage3.startRegularXpLine = i6;
                    animationGiveXpStage3.endRegularXpLine = i6;
                    animationGiveXpStage3.startBonusXpLine = 0;
                    animationGiveXpStage3.endBonusXpLine = i2;
                    animationGiveXpStage3.startBaseXpLabel = i11;
                    animationGiveXpStage3.endBaseXpLabel = i12;
                    animationGiveXpStage3.startRegularXpLabel = i7;
                    animationGiveXpStage3.endRegularXpLabel = i7;
                    animationGiveXpStage3.startBonusXpLabel = i8;
                    i8 += i2;
                    animationGiveXpStage3.endBonusXpLabel = i8;
                    if (!z) {
                        animationGiveXpStage3.fadeInBonus = true;
                        z = true;
                    }
                    this.f14846x.add(animationGiveXpStage3);
                    i2 = 0;
                } else {
                    int i13 = (i4 - i5) - i6;
                    AnimationGiveXpStage animationGiveXpStage4 = new AnimationGiveXpStage();
                    animationGiveXpStage4.baseXpLine = i5;
                    animationGiveXpStage4.startRegularXpLine = i6;
                    animationGiveXpStage4.endRegularXpLine = i6;
                    animationGiveXpStage4.startBonusXpLine = 0;
                    animationGiveXpStage4.endBonusXpLine = i13;
                    animationGiveXpStage4.startBaseXpLabel = i11;
                    animationGiveXpStage4.endBaseXpLabel = i11 + i13;
                    animationGiveXpStage4.startRegularXpLabel = i7;
                    animationGiveXpStage4.endRegularXpLabel = i7;
                    animationGiveXpStage4.startBonusXpLabel = i8;
                    i8 += i13;
                    animationGiveXpStage4.endBonusXpLabel = i8;
                    if (!z) {
                        animationGiveXpStage4.fadeInBonus = true;
                        z = true;
                    }
                    this.f14846x.add(animationGiveXpStage4);
                    AnimationLevelUpStage animationLevelUpStage2 = new AnimationLevelUpStage();
                    i3++;
                    int i14 = Game.f8589i.authManager.maxProfileLevel;
                    if (i3 > i14) {
                        i3 = i14;
                    }
                    animationLevelUpStage2.newLevel = i3;
                    this.f14846x.add(animationLevelUpStage2);
                    i2 -= i13;
                    i5 = 0;
                    i6 = 0;
                }
            }
        }
    }

    public void postRender(float f) {
        if (this.f14847y) {
            if (this.f14845w == null) {
                Array<AnimationStage> array = this.f14846x;
                if (array.size != 0) {
                    AnimationStage removeIndex = array.removeIndex(0);
                    this.f14845w = removeIndex;
                    removeIndex.start();
                }
            }
            AnimationStage animationStage = this.f14845w;
            if (animationStage != null) {
                AnimationStage.m19889c(animationStage, (int) (f * 1000000.0f));
                long j = this.f14845w.f14855a;
                AnimationStage animationStage2 = this.f14845w;
                long j2 = animationStage2.duration;
                if (j >= j2) {
                    animationStage2.f14855a = j2;
                }
                AnimationStage animationStage3 = this.f14845w;
                animationStage3.draw(Interpolation.pow2Out.apply(((float) animationStage3.f14855a) / ((float) this.f14845w.duration)));
                if (this.f14845w.f14855a == this.f14845w.duration) {
                    this.f14845w = null;
                }
            }
            if (this.f14842t.isVisible() && this.f14822A != Game.getTimestampSeconds()) {
                m19894r();
            }
        }
    }

    public ProfileSummary setVisible(boolean z, boolean z2) {
        this.f14826d.clearActions();
        this.f14826d.addAction(Actions.scaleTo(1.0f, 1.0f));
        this.f14825c.getTable().setVisible(z);
        if (z) {
            int timestampSeconds = Game.getTimestampSeconds();
            AuthManager authManager = Game.f8589i.authManager;
            if (timestampSeconds - authManager.lastStateUpdateTimestamp > 30) {
                authManager.loadStateFromServer(null, null);
            }
            if (!this.f14847y) {
                update();
            }
        } else {
            this.f14848z = false;
            this.f14845w = null;
            this.f14846x.clear();
            this.f14837o.setVisible(false);
            this.f14838p.setVisible(false);
            this.f14840r.setVisible(false);
            this.f14842t.setVisible(false);
        }
        this.f14847y = z;
        this.f14830h.setVisible(z2);
        return this;
    }

    public void showXpGained(final int i, final int i2, boolean z, boolean z2) {
        if (i <= 0) {
            Logger.log("ProfileSummary", "no regular xp, cancel");
            return;
        }
        if (z) {
            this.f14834l.setDrawable(Game.f8589i.assetManager.getDrawable("icon-triangle-top"));
            this.f14834l.setColor(MaterialColor.LIGHT_GREEN.P500);
        } else if (!z2) {
            this.f14834l.setDrawable(Game.f8589i.assetManager.getDrawable("icon-triangle-bottom"));
            this.f14834l.setColor(new Color(1.0f, 1.0f, 1.0f, 0.28f));
        } else {
            this.f14834l.setVisible(false);
        }
        this.f14839q.setPosition(242.0f, 11.0f);
        this.f14837o.setVisible(true);
        this.f14839q.setVisible(false);
        this.f14841s.setVisible(false);
        this.f14825c.getTable().setVisible(true);
        this.f14847y = true;
        this.f14848z = true;
        this.f14826d.clearActions();
        this.f14826d.setTransform(true);
        Group group = this.f14826d;
        ScaleToAction scaleTo = Actions.scaleTo(0.0f, 0.0f);
        DelayAction delay = Actions.delay(0.13f);
        Interpolation.SwingOut swingOut = Interpolation.swingOut;
        group.addAction(Actions.sequence(scaleTo, Actions.parallel(Actions.sequence(delay, Actions.scaleBy(1.0f, 0.0f, 0.4f, swingOut)), Actions.scaleBy(0.0f, 1.0f, 0.4f, swingOut)), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.shared.p1
            @Override // java.lang.Runnable
            public final void run() {
                ProfileSummary.this.m19895q(i, i2);
            }
        })));
    }

    public void toggleXpInfoDropdown() {
        Table table = this.f14842t;
        table.setVisible(!table.isVisible());
        m19894r();
    }

    public void update() {
        if (this.f14848z) {
            Logger.log("ProfileSummary", "skipped update during animation");
            return;
        }
        this.f14829g.setText(Game.f8589i.authManager.getNickname());
        if (Game.f8589i.authManager.isSignedIn()) {
            this.f14827e.setVisible(true);
            this.f14829g.setVisible(true);
            AuthManager authManager = Game.f8589i.authManager;
            this.f14823a = authManager.profileLevel;
            this.f14824b = authManager.currentLevelXp;
            this.f14827e.setDrawable(new TextureRegionDrawable(authManager.getAvatar(64)));
            this.f14828f.setVisible(true);
            this.f14831i.setVisible(false);
            this.f14835m.setVisible(true);
            this.f14833k.clear();
            Array<TextureRegionConfig> profileLevelTextures = Game.f8589i.authManager.getProfileLevelTextures(this.f14823a);
            for (int i = 0; i < profileLevelTextures.size; i++) {
                this.f14833k.addActor(profileLevelTextures.items[i].createImage(0.0f, 0.0f, 48.0f));
            }
            Label label = this.f14832j;
            label.setText(this.f14824b + " / " + Game.f8589i.authManager.nextLevelXp + " XP");
            this.f14836n.setVisible(true);
            this.f14836n.setColor(Color.WHITE);
            this.f14836n.setSize((float) ((int) ((((float) this.f14824b) * 162.0f) / ((float) Game.f8589i.authManager.nextLevelXp))), 8.0f);
            if (Game.f8589i.authManager.xpStatus == AuthManager.XpStatus.BONUS) {
                this.f14834l.setDrawable(Game.f8589i.assetManager.getDrawable("icon-triangle-top"));
                this.f14834l.setColor(MaterialColor.LIGHT_GREEN.P500);
            } else if (Game.f8589i.authManager.xpStatus == AuthManager.XpStatus.REDUCED) {
                this.f14834l.setDrawable(Game.f8589i.assetManager.getDrawable("icon-triangle-bottom"));
                this.f14834l.setColor(new Color(1.0f, 1.0f, 1.0f, 0.28f));
            } else {
                this.f14834l.setVisible(false);
            }
            this.f14842t.clearChildren();
            Game game = Game.f8589i;
            Label label2 = new Label(game.localeManager.i18n.format("profile_summary_dropdown_bonus_xp_available", Integer.valueOf(game.authManager.bonusXpRemaining)), Game.f8589i.assetManager.getLabelStyle(21));
            label2.setAlignment(8);
            this.f14842t.add((Table) label2).expandX().fillX().padLeft(16.0f).padRight(16.0f).row();
            Game game2 = Game.f8589i;
            Label label3 = new Label(game2.localeManager.i18n.format("profile_summary_dropdown_regular_xp_available", Integer.valueOf(game2.authManager.regularXpRemaining)), Game.f8589i.assetManager.getLabelStyle(21));
            label3.setAlignment(8);
            this.f14842t.add((Table) label3).expandX().fillX().padLeft(16.0f).padRight(16.0f).row();
            AuthManager authManager2 = Game.f8589i.authManager;
            if (authManager2.bonusXpRemaining == 0 && authManager2.regularXpRemaining == 0) {
                Label label4 = new Label(Game.f8589i.localeManager.i18n.get("profile_summary_dropdown_xp_reduced"), Game.f8589i.assetManager.getLabelStyle(21));
                label4.setAlignment(8);
                label4.setColor(new Color(1.0f, 1.0f, 1.0f, 0.56f));
                this.f14842t.add((Table) label4).expandX().fillX().padLeft(16.0f).padRight(16.0f).row();
            }
            if (Game.f8589i.authManager.tempXp > 0) {
                Label label5 = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
                Game game3 = Game.f8589i;
                label5.setText(game3.localeManager.i18n.format("profile_summary_dropdown_validated_xp", Integer.valueOf(game3.authManager.tempXp)));
                label5.setAlignment(8);
                label5.setColor(new Color(1.0f, 1.0f, 1.0f, 0.56f));
                this.f14842t.add((Table) label5).expandX().fillX().padLeft(16.0f).padRight(16.0f).row();
            }
            Table table = new Table();
            Label label6 = new Label(Game.f8589i.localeManager.i18n.get("profile_summary_dropdown_next_refresh") + ":", Game.f8589i.assetManager.getLabelStyle(21));
            table.add((Table) label6);
            label6.setColor(new Color(1.0f, 1.0f, 1.0f, 0.56f));
            Label label7 = new Label("1d 00:00:00", Game.f8589i.assetManager.getLabelStyle(21));
            this.f14843u = label7;
            table.add((Table) label7).padLeft(8.0f);
            table.add().height(1.0f).expandX().fillX();
            this.f14842t.add(table).expandX().fillX().padLeft(16.0f).padRight(16.0f);
            this.f14844v.setVisible(Game.f8589i.authManager.ofMeritPrestigeAvailable);
            return;
        }
        this.f14827e.setDrawable(Game.f8589i.assetManager.getDrawable("icon-user"));
        this.f14828f.setVisible(false);
        this.f14831i.setVisible(true);
        this.f14835m.setVisible(false);
        this.f14844v.setVisible(false);
    }

    /* renamed from: r */
    public final void m19894r() {
        this.f14822A = Game.getTimestampSeconds();
        if (this.f14843u != null) {
            int timestampSeconds = Game.f8589i.authManager.nextXpRefreshTimestamp - Game.getTimestampSeconds();
            if (timestampSeconds < 0) {
                timestampSeconds = 0;
            }
            this.f14843u.setText(StringFormatter.timePassed(timestampSeconds, true, true));
        }
    }
}
