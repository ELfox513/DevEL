package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Animation;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.ParticleEmitter;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.actions.DelayAction;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.utils.StringFormatter;
import java.lang.ref.WeakReference;
/* renamed from: com.prineside.tdi2.ui.actors.ItemCell */
/* loaded from: classes2.dex */
public class ItemCell extends Group {
    public static final float COMPACT_SIZE_COEFF = 0.75f;
    public static final float HEIGHT = 140.0f;
    public static final float WIDTH = 128.0f;

    /* renamed from: o0 */
    public static float[] f12561o0 = new float[3];

    /* renamed from: p0 */
    public static Color f12562p0 = new Color();

    /* renamed from: M */
    public AttentionRaysUnderlay f12563M;

    /* renamed from: N */
    public ParticlesCanvas f12564N;

    /* renamed from: O */
    public Image f12565O;

    /* renamed from: P */
    public Group f12566P;

    /* renamed from: Q */
    public Image f12567Q;

    /* renamed from: R */
    public Group f12568R;

    /* renamed from: S */
    public Image f12569S;

    /* renamed from: T */
    public Label f12570T;

    /* renamed from: U */
    public Image f12571U;

    /* renamed from: V */
    public Label f12572V;

    /* renamed from: W */
    public Label f12573W;

    /* renamed from: Z */
    public Item f12576Z;

    /* renamed from: b0 */
    public int f12578b0;

    /* renamed from: c0 */
    public int f12579c0;

    /* renamed from: d0 */
    public boolean f12580d0;

    /* renamed from: e0 */
    public boolean f12581e0;

    /* renamed from: f0 */
    public boolean f12582f0;

    /* renamed from: g0 */
    public boolean f12583g0;

    /* renamed from: h0 */
    public boolean f12584h0;

    /* renamed from: i0 */
    public boolean f12585i0;

    /* renamed from: m0 */
    public long f12589m0;

    /* renamed from: n0 */
    public WeakReference<GcListener> f12590n0;

    /* renamed from: X */
    public boolean f12574X = false;

    /* renamed from: Y */
    public boolean f12575Y = false;

    /* renamed from: a0 */
    public int f12577a0 = 0;

    /* renamed from: j0 */
    public String f12586j0 = null;

    /* renamed from: k0 */
    public Actor f12587k0 = null;

    /* renamed from: l0 */
    public float f12588l0 = 1.0f;

    /* renamed from: com.prineside.tdi2.ui.actors.ItemCell$GcListener */
    /* loaded from: classes2.dex */
    public class GcListener {
        public GcListener() {
        }

        public void finalize() {
            if (ItemCell.this.f12574X) {
                if (Game.getTimestampMillis() - ItemCell.this.f12589m0 >= 700) {
                    ItemCell.this.f12575Y = true;
                }
                ItemCell.this.f12590n0 = null;
            }
            super.finalize();
        }
    }

    public int getCount() {
        return this.f12577a0;
    }

    public Item getItem() {
        return this.f12576Z;
    }

    public boolean isSelected() {
        return this.f12583g0;
    }

    public void setItem(ItemStack itemStack) {
        setItem(itemStack.getItem(), itemStack.getCount());
    }

    public void setNoRarityBackground(boolean z) {
        this.f12580d0 = z;
    }

    public final void setup() {
        this.f12574X = true;
        Item item = this.f12576Z;
        if (item != null) {
            this.f12576Z = null;
            setItem(item, this.f12577a0);
        } else {
            setIconAndCount(this.f12587k0, this.f12588l0, this.f12577a0);
        }
        String str = this.f12586j0;
        if (str != null) {
            setCornerText(str);
        }
        setNotificationBubbleEnabled(this.f12585i0);
        setSelected(this.f12583g0);
        showRays(this.f12584h0);
        setCovered(this.f12582f0);
    }

    /* renamed from: x */
    public final void m20698x() {
        this.f12575Y = false;
        if (!this.f12574X) {
            return;
        }
        this.f12574X = false;
        if (getStage() != null) {
            AttentionRaysUnderlay attentionRaysUnderlay = this.f12563M;
            if (attentionRaysUnderlay != null) {
                attentionRaysUnderlay.remove();
            }
            ParticlesCanvas particlesCanvas = this.f12564N;
            if (particlesCanvas != null) {
                particlesCanvas.remove();
            }
            Image image = this.f12565O;
            if (image != null) {
                image.remove();
            }
            Image image2 = this.f12567Q;
            if (image2 != null) {
                image2.remove();
            }
            Group group = this.f12568R;
            if (group != null) {
                group.remove();
            }
            Image image3 = this.f12569S;
            if (image3 != null) {
                image3.remove();
            }
            Label label = this.f12570T;
            if (label != null) {
                label.remove();
            }
            Image image4 = this.f12571U;
            if (image4 != null) {
                image4.remove();
            }
            Label label2 = this.f12572V;
            if (label2 != null) {
                label2.remove();
            }
            Label label3 = this.f12573W;
            if (label3 != null) {
                label3.remove();
            }
        }
        this.f12563M = null;
        this.f12564N = null;
        this.f12565O = null;
        this.f12567Q = null;
        this.f12568R = null;
        this.f12569S = null;
        this.f12570T = null;
        this.f12571U = null;
        this.f12572V = null;
        this.f12573W = null;
        if (this.f12576Z != null) {
            this.f12587k0 = null;
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        GcListener gcListener;
        if (!this.f12574X) {
            setup();
        }
        this.f12589m0 = Game.getTimestampMillis();
        super.draw(batch, f);
        WeakReference<GcListener> weakReference = this.f12590n0;
        if (weakReference == null) {
            gcListener = null;
        } else {
            gcListener = weakReference.get();
        }
        if (gcListener == null) {
            this.f12590n0 = new WeakReference<>(new GcListener());
        }
    }

    public void reveal() {
        if (!this.f12574X) {
            setup();
        }
        if (!this.f12582f0) {
            setCovered(true);
        }
        this.f12566P.setTransform(true);
        Group group = this.f12566P;
        DelayAction delay = Actions.delay(0.1f);
        Interpolation interpolation = Interpolation.sine;
        group.addAction(Actions.sequence(delay, Actions.scaleTo(0.0f, 1.0f, 0.25f, interpolation), Actions.parallel(Actions.scaleTo(1.1f, 1.1f, 0.25f, interpolation), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.actors.ItemCell.1
            @Override // java.lang.Runnable
            public void run() {
                ItemCell.this.setCovered(false);
                Game.f8589i.soundManager.playRarity(ItemCell.this.f12576Z.getRarity());
                ItemCell.this.shine(true, true);
            }
        })), Actions.scaleTo(1.0f, 1.0f, 0.1f, Interpolation.exp5In), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.actors.ItemCell.2
            @Override // java.lang.Runnable
            public void run() {
                ItemCell.this.f12566P.setTransform(false);
            }
        })));
    }

    public void setColRow(int i, int i2) {
        this.f12578b0 = i;
        this.f12579c0 = i2;
        if (this.f12574X) {
            m20697y();
        }
    }

    public void setCompact() {
        setSize(96.0f, 105.0f);
        this.f12566P.setSize(96.0f, 105.0f);
        if (this.f12574X && !this.f12581e0) {
            this.f12581e0 = true;
            m20698x();
            setup();
            return;
        }
        this.f12581e0 = true;
    }

    public void setCount(int i) {
        float f;
        this.f12577a0 = i;
        if (this.f12574X) {
            if (this.f12570T == null) {
                Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
                this.f12570T = label;
                label.setAlignment(1);
                this.f12566P.addActor(this.f12570T);
                m20699w();
            }
            if (this.f12581e0) {
                f = 0.75f;
            } else {
                f = 1.0f;
            }
            this.f12570T.setPosition(0.0f, 16.0f * f);
            this.f12570T.setSize(128.0f * f, f * 18.0f);
            if (i >= 1) {
                this.f12570T.setVisible(true ^ this.f12582f0);
                if (i < 10000000) {
                    this.f12570T.setText(StringFormatter.commaSeparatedNumber(i));
                    return;
                } else {
                    this.f12570T.setText(StringFormatter.compactNumber(i, false));
                    return;
                }
            }
            this.f12570T.setVisible(false);
        }
    }

    public void setCovered(boolean z) {
        this.f12582f0 = z;
        if (this.f12574X) {
            m20697y();
            setIconAndCount(this.f12587k0, this.f12588l0, this.f12577a0);
        }
    }

    public void setIconAndCount(Actor actor, float f, int i) {
        float f2;
        this.f12587k0 = actor;
        this.f12588l0 = f;
        if (this.f12574X) {
            if (this.f12568R == null) {
                Group group = new Group();
                this.f12568R = group;
                group.setTransform(false);
                this.f12566P.addActor(this.f12568R);
                m20699w();
            }
            if (this.f12581e0) {
                f2 = 0.75f;
            } else {
                f2 = 1.0f;
            }
            float f3 = 80.0f * f2;
            this.f12568R.setSize(f3, f3);
            this.f12568R.setPosition(f2 * 24.0f, f2 * 46.0f);
            float width = (-(f - 1.0f)) * this.f12568R.getWidth() * 0.5f;
            this.f12568R.clearChildren();
            if (actor != null) {
                actor.setSize(this.f12568R.getWidth() * f, this.f12568R.getHeight() * f);
                this.f12568R.addActor(actor);
            }
            if (this.f12581e0) {
                if (i >= 1) {
                    this.f12568R.setPosition(18.0f + width, width + 35.0f);
                } else {
                    this.f12568R.setPosition(18.0f + width, width + 23.0f);
                }
            } else if (i >= 1) {
                this.f12568R.setPosition(24.0f + width, width + 46.0f);
            } else {
                this.f12568R.setPosition(24.0f + width, width + 30.0f);
            }
            this.f12568R.setVisible(!this.f12582f0);
            Image image = this.f12571U;
            if (image != null) {
                image.setVisible(!this.f12582f0);
                this.f12573W.setVisible(!this.f12582f0);
                this.f12572V.setVisible(true ^ this.f12582f0);
            }
        }
        setCount(i);
    }

    public void setItem(Item item, int i) {
        if (this.f12574X) {
            if (this.f12576Z != item) {
                if (item == null) {
                    setIconAndCount(null, 1.0f, 0);
                } else {
                    Actor generateIcon = item.generateIcon((this.f12581e0 ? 0.75f : 1.0f) * 80.0f, false);
                    if (!item.isCountable()) {
                        i = 0;
                    }
                    setIconAndCount(generateIcon, 1.0f, i);
                }
                this.f12576Z = item;
                m20697y();
                return;
            }
            return;
        }
        this.f12576Z = item;
        setCount(i);
    }

    public void setNotificationBubbleEnabled(boolean z) {
        this.f12585i0 = z;
        if (this.f12574X) {
            if (z) {
                if (this.f12569S == null) {
                    Image image = new Image(Game.f8589i.assetManager.getDrawable("count-bubble"));
                    this.f12569S = image;
                    image.setSize(32.25f, 36.75f);
                    this.f12569S.setPosition(98.0f, 108.0f);
                    this.f12569S.setVisible(false);
                    this.f12566P.addActor(this.f12569S);
                    m20699w();
                }
                this.f12569S.setVisible(true);
                return;
            }
            Image image2 = this.f12569S;
            if (image2 != null) {
                image2.setVisible(false);
            }
        }
    }

    public void setSelected(boolean z) {
        float f;
        this.f12583g0 = z;
        if (this.f12574X) {
            if (z) {
                if (this.f12565O == null) {
                    Image image = new Image();
                    this.f12565O = image;
                    addActor(image);
                    m20699w();
                }
                if (this.f12581e0) {
                    f = 0.75f;
                } else {
                    f = 1.0f;
                }
                this.f12565O.setSize(138.24f * f, 151.20001f * f);
                this.f12565O.setPosition((-5.12f) * f, f * (-5.6f));
                if ((this.f12578b0 + this.f12579c0) % 2 == 0) {
                    this.f12565O.setDrawable(Game.f8589i.assetManager.getDrawable("item-cell-a-shape"));
                } else {
                    this.f12565O.setDrawable(Game.f8589i.assetManager.getDrawable("item-cell-b-shape"));
                }
                this.f12565O.setVisible(true);
                return;
            }
            Image image2 = this.f12565O;
            if (image2 != null) {
                image2.setVisible(false);
            }
        }
    }

    public void shine(boolean z, boolean z2) {
        final float f;
        Image image;
        if (this.f12576Z == null) {
            return;
        }
        if (!this.f12574X) {
            setup();
        }
        RarityType rarity = this.f12576Z.getRarity();
        float f2 = 0.75f;
        if (this.f12581e0) {
            f = 0.75f;
        } else {
            f = 1.0f;
        }
        final Color rarityBrightColor = Game.f8589i.progressManager.getRarityBrightColor(rarity);
        if (z) {
            if (this.f12564N == null) {
                if (!this.f12581e0) {
                    f2 = 1.0f;
                }
                ParticlesCanvas particlesCanvas = new ParticlesCanvas();
                this.f12564N = particlesCanvas;
                particlesCanvas.setSize(f2 * 128.0f, f2 * 140.0f);
                this.f12564N.setPosition(0.0f, 0.0f);
                addActor(this.f12564N);
                m20699w();
            }
            this.f12564N.clearParticles();
            ParticleEffectPool.PooledEffect obtain = Game.f8589i.uiManager.itemCellFlashParticles.obtain();
            float[] fArr = f12561o0;
            fArr[0] = rarityBrightColor.f3892r;
            fArr[1] = rarityBrightColor.f3891g;
            fArr[2] = rarityBrightColor.f3890b;
            Array.ArrayIterator<ParticleEmitter> it = obtain.getEmitters().iterator();
            while (it.hasNext()) {
                ParticleEmitter next = it.next();
                next.getTint().setColors(f12561o0);
                next.setMinParticleCount((rarity.ordinal() * 8) + 8);
                next.setMaxParticleCount((rarity.ordinal() * 8) + 8);
                next.getLife().setHigh((rarity.ordinal() * 500.0f) + 1200.0f);
                next.getVelocity().setHigh((rarity.ordinal() * 10.0f) + 100.0f, (rarity.ordinal() * 40.0f) + 400.0f);
            }
            this.f12564N.addParticle(obtain, 64.0f * f, 70.0f * f);
        }
        if (z2) {
            if ((this.f12578b0 + this.f12579c0) % 2 == 0) {
                image = new Image(Game.f8589i.assetManager.getDrawable("item-cell-a-shape"));
            } else {
                image = new Image(Game.f8589i.assetManager.getDrawable("item-cell-b-shape"));
            }
            image.setColor(rarityBrightColor);
            image.setSize(128.0f * f, 140.0f * f);
            image.addAction(Actions.sequence(Actions.delay((rarity.ordinal() * 0.02f) + 0.15f), Actions.parallel(Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.actors.ItemCell.3
                @Override // java.lang.Runnable
                public void run() {
                    AnimatedImage animatedImage = new AnimatedImage(new Animation(0.01665f, Game.f8589i.assetManager.getTextureRegions("item-cell-glow")));
                    ItemCell.f12562p0.set(rarityBrightColor).lerp(Color.WHITE, 0.5f);
                    animatedImage.setColor(ItemCell.f12562p0);
                    float f3 = f;
                    animatedImage.setSize(128.0f * f3, f3 * 140.0f);
                    ItemCell.this.addActor(animatedImage);
                    animatedImage.addAction(Actions.sequence(Actions.delay(1.0f), Actions.removeActor()));
                }
            }), Actions.sequence(Actions.fadeOut((rarity.ordinal() * 0.05f) + 0.4f), Actions.removeActor()))));
            this.f12566P.addActor(image);
            return;
        }
        AnimatedImage animatedImage = new AnimatedImage(new Animation(0.01665f, Game.f8589i.assetManager.getTextureRegions("item-cell-glow")));
        f12562p0.set(rarityBrightColor).lerp(Color.WHITE, 0.5f);
        animatedImage.setColor(f12562p0);
        animatedImage.setSize(128.0f * f, f * 140.0f);
        addActor(animatedImage);
        animatedImage.addAction(Actions.sequence(Actions.delay(1.0f), Actions.removeActor()));
    }

    public void showRays(boolean z) {
        float f;
        this.f12584h0 = z;
        if (this.f12574X) {
            if (z) {
                if (this.f12563M == null) {
                    AttentionRaysUnderlay attentionRaysUnderlay = new AttentionRaysUnderlay(192.0f, Color.WHITE);
                    this.f12563M = attentionRaysUnderlay;
                    addActor(attentionRaysUnderlay);
                    m20699w();
                }
                if (this.f12581e0) {
                    f = 0.75f;
                } else {
                    f = 1.0f;
                }
                AttentionRaysUnderlay attentionRaysUnderlay2 = this.f12563M;
                attentionRaysUnderlay2.size = 192.0f * f;
                attentionRaysUnderlay2.setPosition((-64.0f) * f * 0.5f, f * (-52.0f) * 0.5f);
                this.f12563M.restart();
                Item item = this.f12576Z;
                if (item != null) {
                    this.f12563M.setColor(Game.f8589i.progressManager.getRarityBrightColor(item.getRarity()));
                }
                this.f12563M.setVisible(true);
                return;
            }
            AttentionRaysUnderlay attentionRaysUnderlay3 = this.f12563M;
            if (attentionRaysUnderlay3 != null) {
                attentionRaysUnderlay3.setVisible(false);
            }
        }
    }

    /* renamed from: w */
    public final void m20699w() {
        AttentionRaysUnderlay attentionRaysUnderlay = this.f12563M;
        if (attentionRaysUnderlay != null) {
            attentionRaysUnderlay.setZIndex(0);
        }
        ParticlesCanvas particlesCanvas = this.f12564N;
        if (particlesCanvas != null) {
            particlesCanvas.setZIndex(1);
        }
        Image image = this.f12565O;
        if (image != null) {
            image.setZIndex(2);
        }
        Group group = this.f12566P;
        if (group != null) {
            group.setZIndex(3);
        }
        Image image2 = this.f12567Q;
        if (image2 != null) {
            image2.setZIndex(4);
        }
        Group group2 = this.f12568R;
        if (group2 != null) {
            group2.setZIndex(5);
        }
        Image image3 = this.f12569S;
        if (image3 != null) {
            image3.setZIndex(6);
        }
        Label label = this.f12570T;
        if (label != null) {
            label.setZIndex(7);
        }
        Image image4 = this.f12571U;
        if (image4 != null) {
            image4.setZIndex(8);
        }
        Label label2 = this.f12572V;
        if (label2 != null) {
            label2.setZIndex(9);
        }
        Label label3 = this.f12573W;
        if (label3 != null) {
            label3.setZIndex(10);
        }
    }

    /* renamed from: y */
    public final void m20697y() {
        float f;
        if (this.f12574X) {
            if (this.f12567Q == null) {
                Image image = new Image();
                this.f12567Q = image;
                this.f12566P.addActor(image);
                m20699w();
            }
            if (this.f12581e0) {
                f = 0.75f;
            } else {
                f = 1.0f;
            }
            this.f12567Q.setSize(128.0f * f, f * 140.0f);
            Item item = this.f12576Z;
            if (item != null && !this.f12580d0) {
                RarityType rarity = item.getRarity();
                if (this.f12582f0) {
                    this.f12567Q.setDrawable(Game.f8589i.uiManager.itemCellRarityCoats[(this.f12578b0 + this.f12579c0) % 2][rarity.ordinal()]);
                    this.f12567Q.setColor(Color.WHITE);
                    return;
                }
                if ((this.f12578b0 + this.f12579c0) % 2 == 0) {
                    this.f12567Q.setDrawable(Game.f8589i.assetManager.getDrawable("item-cell-a"));
                } else {
                    this.f12567Q.setDrawable(Game.f8589i.assetManager.getDrawable("item-cell-b"));
                }
                this.f12567Q.setColor(Game.f8589i.progressManager.getRarityColor(rarity));
                Image image2 = this.f12571U;
                if (image2 != null) {
                    image2.setColor(Game.f8589i.progressManager.getRarityColor(rarity));
                    return;
                }
                return;
            }
            this.f12567Q.setDrawable(Game.f8589i.uiManager.itemCellShapes[(this.f12578b0 + this.f12579c0) % 2]);
            this.f12567Q.setColor(0.0f, 0.0f, 0.0f, 0.14f);
            return;
        }
        throw new IllegalStateException("Actor not set up yet");
    }

    public ItemCell() {
        setTransform(false);
        setSize(128.0f, 140.0f);
        Group group = new Group();
        this.f12566P = group;
        group.setTransform(false);
        this.f12566P.setSize(128.0f, 140.0f);
        this.f12566P.setOrigin(64.0f, 70.0f);
        addActor(this.f12566P);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void act(float f) {
        super.act(f);
        if (this.f12575Y) {
            m20698x();
        }
    }

    public void setCornerText(CharSequence charSequence) {
        this.f12586j0 = charSequence.toString();
        if (this.f12574X) {
            if (this.f12571U == null) {
                Image image = new Image(Game.f8589i.assetManager.getDrawable("item-cell-number-bg"));
                this.f12571U = image;
                image.setSize(43.0f, 36.0f);
                this.f12571U.setPosition(7.0f, 97.0f);
                this.f12566P.addActor(this.f12571U);
                Label label = new Label(charSequence, Game.f8589i.assetManager.getLabelStyle(21));
                this.f12572V = label;
                label.setPosition(11.0f, 105.0f);
                this.f12572V.setSize(38.0f, 18.0f);
                this.f12572V.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                this.f12572V.setAlignment(1);
                this.f12566P.addActor(this.f12572V);
                Label label2 = new Label(charSequence, Game.f8589i.assetManager.getLabelStyle(21));
                this.f12573W = label2;
                label2.setPosition(9.0f, 107.0f);
                this.f12573W.setSize(38.0f, 18.0f);
                this.f12573W.setAlignment(1);
                this.f12566P.addActor(this.f12573W);
                m20699w();
                return;
            }
            this.f12573W.setText(charSequence);
            this.f12572V.setText(charSequence);
        }
    }
}
