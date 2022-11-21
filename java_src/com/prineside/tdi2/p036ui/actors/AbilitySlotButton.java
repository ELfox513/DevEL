package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.utils.MaterialColor;
/* renamed from: com.prineside.tdi2.ui.actors.AbilitySlotButton */
/* loaded from: classes2.dex */
public class AbilitySlotButton extends Group {

    /* renamed from: M */
    public Image f12450M;

    /* renamed from: N */
    public Image f12451N;

    /* renamed from: O */
    public Image f12452O;

    /* renamed from: P */
    public RadialSprite f12453P;

    /* renamed from: Q */
    public Image f12454Q;

    /* renamed from: R */
    public Label f12455R;

    /* renamed from: T */
    public AbilityType f12457T;

    /* renamed from: U */
    public int f12458U;

    /* renamed from: W */
    public boolean f12460W;

    /* renamed from: X */
    public boolean f12461X;

    /* renamed from: Y */
    public GameValueProvider f12462Y;

    /* renamed from: S */
    public Image[] f12456S = new Image[5];

    /* renamed from: V */
    public float f12459V = 10.0f;

    public AbilityType getAbility() {
        return this.f12457T;
    }

    public int getCount() {
        return this.f12458U;
    }

    public float getGameEnergy() {
        return this.f12459V;
    }

    public boolean isSelected() {
        return this.f12452O.isVisible();
    }

    public void setSelected(boolean z) {
        this.f12452O.setVisible(z);
    }

    public void setAbility(AbilityType abilityType) {
        this.f12457T = abilityType;
        update();
    }

    public void setCount(int i) {
        this.f12458U = i;
        update();
    }

    public void setGameEnergy(float f) {
        this.f12459V = f;
        update();
    }

    public void update() {
        for (Image image : this.f12456S) {
            image.setVisible(false);
        }
        AbilityType abilityType = this.f12457T;
        if (abilityType == null) {
            if (this.f12460W) {
                this.f12450M.setDrawable(Game.f8589i.assetManager.getDrawable("ui-ability-button-empty-plus"));
                this.f12450M.setColor(1.0f, 1.0f, 1.0f, 0.14f);
            } else {
                this.f12450M.setDrawable(Game.f8589i.assetManager.getDrawable("ui-ability-button-empty"));
                this.f12450M.setColor(0.0f, 0.0f, 0.0f, 0.14f);
            }
            this.f12450M.setSize(96.0f, 104.0f);
            this.f12450M.setPosition(0.0f, 11.0f);
            this.f12451N.setVisible(false);
            this.f12455R.setVisible(false);
            this.f12454Q.setVisible(false);
            return;
        }
        this.f12454Q.setColor(Game.f8589i.abilityManager.getFactory(abilityType).getDarkerColor());
        this.f12450M.setDrawable(Game.f8589i.assetManager.getDrawable("ui-ability-button"));
        int intValue = this.f12462Y.getIntValue(Game.f8589i.abilityManager.getEnergyCostGameValueType(this.f12457T));
        if (this.f12458U > 0) {
            float f = intValue;
            if (f <= this.f12459V) {
                this.f12451N.setColor(Color.WHITE);
                if (this.f12461X) {
                    this.f12450M.setColor(Game.f8589i.abilityManager.getFactory(this.f12457T).getColor());
                } else {
                    this.f12450M.setColor(Game.f8589i.abilityManager.getFactory(this.f12457T).getDarkerColor());
                }
                for (int i = 0; i < intValue; i++) {
                    Image[] imageArr = this.f12456S;
                    if (i < imageArr.length) {
                        imageArr[i].setVisible(true);
                        this.f12456S[i].setColor(Color.WHITE);
                    }
                }
                this.f12454Q.setVisible(false);
            } else {
                this.f12451N.setColor(0.0f, 0.0f, 0.0f, 0.78f);
                this.f12450M.setColor(Game.f8589i.abilityManager.getFactory(this.f12457T).getDarkerColor());
                this.f12450M.getColor().f3889a = 0.4f;
                for (int i2 = 0; i2 < intValue; i2++) {
                    Image[] imageArr2 = this.f12456S;
                    if (i2 < imageArr2.length) {
                        imageArr2[i2].setVisible(true);
                        if (i2 + 1 <= this.f12459V) {
                            this.f12456S[i2].setColor(Color.WHITE);
                        } else {
                            this.f12456S[i2].setColor(1.0f, 1.0f, 1.0f, 0.56f);
                        }
                    }
                }
                this.f12453P.setAngle((1.0f - (this.f12459V / f)) * 359.99f);
                this.f12454Q.setVisible(true);
            }
        } else {
            this.f12451N.setColor(MaterialColor.GREY.P700);
            this.f12450M.setColor(MaterialColor.GREY.P900);
            this.f12454Q.setVisible(false);
        }
        this.f12450M.setSize(106.0f, 115.0f);
        this.f12450M.setPosition(0.0f, 0.0f);
        this.f12451N.setDrawable(Game.f8589i.abilityManager.getFactory(this.f12457T).getIconDrawable());
        this.f12451N.setVisible(true);
        this.f12455R.setText(this.f12458U);
        this.f12455R.setVisible(true);
    }

    public AbilitySlotButton(boolean z, GameValueProvider gameValueProvider) {
        this.f12460W = z;
        this.f12462Y = gameValueProvider;
        setTransform(false);
        setSize(106.0f, 115.0f);
        addListener(new InputListener() { // from class: com.prineside.tdi2.ui.actors.AbilitySlotButton.1
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                if (i == -1) {
                    AbilitySlotButton.this.f12461X = true;
                    AbilitySlotButton.this.update();
                }
                super.enter(inputEvent, f, f2, i, actor);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                if (i == -1) {
                    AbilitySlotButton.this.f12461X = false;
                    AbilitySlotButton.this.update();
                }
                super.exit(inputEvent, f, f2, i, actor);
            }
        });
        Image image = new Image();
        this.f12450M = image;
        addActor(image);
        RadialSprite radialSprite = new RadialSprite(Game.f8589i.assetManager.getTextureRegion("ui-ability-button-edges"));
        this.f12453P = radialSprite;
        Image image2 = new Image(radialSprite);
        this.f12454Q = image2;
        image2.setSize(96.0f, 104.0f);
        this.f12454Q.setPosition(0.0f, 11.0f);
        this.f12454Q.setVisible(false);
        addActor(this.f12454Q);
        Image image3 = new Image();
        this.f12451N = image3;
        image3.setSize(64.0f, 64.0f);
        this.f12451N.setPosition(16.0f, 30.0f);
        addActor(this.f12451N);
        Label label = new Label("0", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), Color.WHITE));
        this.f12455R = label;
        label.setPosition(82.0f, 12.0f);
        this.f12455R.setSize(8.0f, 15.0f);
        this.f12455R.setAlignment(1);
        addActor(this.f12455R);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("ui-ability-button-selection"));
        this.f12452O = image4;
        image4.setSize(108.0f, 118.0f);
        this.f12452O.setPosition(-6.0f, 4.0f);
        this.f12452O.addAction(Actions.forever(Actions.sequence(Actions.alpha(0.5f, 0.5f), Actions.alpha(1.0f, 0.5f))));
        addActor(this.f12452O);
        int i = 0;
        while (true) {
            Image[] imageArr = this.f12456S;
            if (i < imageArr.length) {
                imageArr[i] = new Image(Game.f8589i.assetManager.getDrawable("ui-ability-button-energy-mark"));
                this.f12456S[i].setSize(15.0f, 16.0f);
                float f = i;
                this.f12456S[i].setPosition((f * 15.0f) + 8.0f, 8.0f - f);
                addActor(this.f12456S[i]);
                i++;
            } else {
                setAbility(null);
                setSelected(false);
                return;
            }
        }
    }
}
