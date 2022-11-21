package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.PerspectiveCamera;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.Environment;
import com.badlogic.gdx.graphics.g3d.ModelInstance;
import com.badlogic.gdx.graphics.g3d.attributes.ColorAttribute;
import com.badlogic.gdx.graphics.g3d.environment.PointLight;
import com.badlogic.gdx.graphics.g3d.model.Node;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Research;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.ResearchType;
import com.prineside.tdi2.enums.TrophyType;
import com.prineside.tdi2.managers.TrophyManager;
import com.prineside.tdi2.p036ui.actors.ModelView;
import com.prineside.tdi2.utils.DrawUtils;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.PMath;
/* renamed from: com.prineside.tdi2.ui.shared.MainMenuUiScene */
/* loaded from: classes2.dex */
public class MainMenuUiScene {

    /* renamed from: d */
    public static final float[] f14735d = new float[9];

    /* renamed from: e */
    public static final Color f14736e = new Color();

    /* renamed from: a */
    public ModelView f14737a;

    /* renamed from: b */
    public Table f14738b = new Table();

    /* renamed from: c */
    public int f14739c = -1;

    public Actor getContents() {
        ModelView modelView = this.f14737a;
        return modelView == null ? this.f14738b : modelView;
    }

    public void rebuildIfNeeded() {
        int width = (Gdx.graphics.getWidth() * 31) + Gdx.graphics.getHeight();
        final Array<Research> instances = Game.f8589i.researchManager.getInstances();
        final Array<Research.ResearchLink> links = Game.f8589i.researchManager.getLinks();
        for (int i = 0; i < instances.size; i++) {
            width = (width * 29) + instances.get(i).installedLevel;
        }
        for (TrophyType trophyType : TrophyType.values) {
            if (Game.f8589i.trophyManager.getConfig(trophyType).isReceived()) {
                width = (width * 29) + 1;
            }
        }
        if (this.f14739c != width) {
            try {
                this.f14739c = width;
                if (this.f14737a == null) {
                    this.f14738b.clearChildren();
                    Table table = new Table();
                    this.f14738b.add(table).expand().fill().padRight(340.0f);
                    final ResourcePack.AtlasTextureRegion textureRegion = Game.f8589i.assetManager.getTextureRegion("small-circle");
                    final ResourcePack.AtlasTextureRegion textureRegion2 = Game.f8589i.assetManager.getTextureRegion("blank");
                    final Research researchInstance = Game.f8589i.researchManager.getResearchInstance(ResearchType.ROOT);
                    final float[] fArr = {10.0f};
                    table.add((Table) new Actor() { // from class: com.prineside.tdi2.ui.shared.MainMenuUiScene.4
                        @Override // com.badlogic.gdx.scenes.scene2d.Actor
                        public void draw(Batch batch, float f) {
                            int i2;
                            float f2;
                            float f3;
                            float[] fArr2 = fArr;
                            fArr2[0] = fArr2[0] + Gdx.graphics.getDeltaTime();
                            int mapMinX = Game.f8589i.researchManager.getMapMinX();
                            int mapMinY = Game.f8589i.researchManager.getMapMinY();
                            float min = StrictMath.min(640.0f / Game.f8589i.researchManager.getMapWidth(), 640.0f / Game.f8589i.researchManager.getMapHeight());
                            float x = getX();
                            float y = getY();
                            Array.ArrayIterator it = links.iterator();
                            while (it.hasNext()) {
                                Research.ResearchLink researchLink = (Research.ResearchLink) it.next();
                                Color color = Color.BLACK;
                                if (researchLink.parent.installedLevel > 0 && researchLink.child.installedLevel > 0) {
                                    color = MaterialColor.CYAN.P900;
                                }
                                MainMenuUiScene.f14735d[0] = ((researchLink.parent.f8856x - mapMinX) * min) + x;
                                MainMenuUiScene.f14735d[1] = ((researchLink.parent.f8857y - mapMinY) * min) + y;
                                MainMenuUiScene.f14735d[2] = color.toFloatBits();
                                MainMenuUiScene.f14735d[3] = ((researchLink.pivotX - mapMinX) * min) + x;
                                MainMenuUiScene.f14735d[4] = ((researchLink.pivotY - mapMinY) * min) + y;
                                MainMenuUiScene.f14735d[5] = MainMenuUiScene.f14735d[2];
                                MainMenuUiScene.f14735d[6] = ((researchLink.child.f8856x - mapMinX) * min) + x;
                                MainMenuUiScene.f14735d[7] = ((researchLink.child.f8857y - mapMinY) * min) + y;
                                MainMenuUiScene.f14735d[8] = MainMenuUiScene.f14735d[2];
                                DrawUtils.texturedMultiLine((SpriteBatch) batch, 2.0f, textureRegion2, MainMenuUiScene.f14735d);
                            }
                            int i3 = instances.size;
                            int i4 = 0;
                            while (i4 < i3) {
                                Research research = (Research) instances.get(i4);
                                int i5 = research.f8856x;
                                float f4 = ((i5 - mapMinX) * min) + x;
                                int i6 = research.f8857y;
                                float f5 = ((i6 - mapMinY) * min) + y;
                                if (research.installedLevel > 0) {
                                    float f6 = i5;
                                    float f7 = i6;
                                    Research research2 = researchInstance;
                                    float squareDistanceBetweenPoints = ((((-fArr[0]) * 0.4f) + (PMath.getSquareDistanceBetweenPoints(f6, f7, research2.f8856x, research2.f8857y) * 1.0E-7f)) % 1.0f) + 1.0f;
                                    if (squareDistanceBetweenPoints < 0.5f) {
                                        f2 = 0.0f;
                                    } else {
                                        f2 = (squareDistanceBetweenPoints - 0.5f) * 2.0f;
                                    }
                                    if (f2 < 0.85f) {
                                        f3 = f2 / 0.85f;
                                    } else {
                                        f3 = 1.0f - ((f2 - 0.85f) / 0.15f);
                                    }
                                    MainMenuUiScene.f14736e.set(MaterialColor.CYAN.P900);
                                    MainMenuUiScene.f14736e.lerp(MaterialColor.CYAN.P400, f3);
                                    batch.setColor(MainMenuUiScene.f14736e);
                                    i2 = i4;
                                    batch.draw(textureRegion, f4 - 4.0f, f5 - 4.0f, 8.0f, 8.0f);
                                } else {
                                    i2 = i4;
                                    batch.setColor(Color.BLACK);
                                    batch.draw(textureRegion, f4 - 4.0f, f5 - 4.0f, 8.0f, 8.0f);
                                }
                                i4 = i2 + 1;
                            }
                        }
                    }).size(640.0f, 640.0f).row();
                    Table table2 = new Table();
                    int i2 = 0;
                    for (TrophyType trophyType2 : TrophyType.values) {
                        TrophyManager.TrophyConfig config = Game.f8589i.trophyManager.getConfig(trophyType2);
                        Image image = new Image();
                        if (config.isReceived()) {
                            image.setDrawable(new TextureRegionDrawable(config.getIconTexture()));
                        } else {
                            image.setDrawable(new TextureRegionDrawable(config.getWhiteTexture()));
                            image.setColor(Color.BLACK);
                        }
                        table2.add((Table) image).size(48.0f).pad(4.0f);
                        i2++;
                        if (i2 % 12 == 0) {
                            table2.row();
                        }
                    }
                    table.add(table2).padTop(32.0f).padBottom(32.0f);
                    return;
                }
                int width2 = Gdx.graphics.getWidth();
                int height = Gdx.graphics.getHeight();
                ModelView modelView = this.f14737a;
                if (modelView.width != width2 || modelView.height != height) {
                    modelView.setSize(width2, height);
                }
                ModelInstance modelInstance = new ModelInstance(Game.f8589i.assetManager.getSceneModel());
                Node node = modelInstance.getNode("researches");
                if (node != null) {
                    for (int i3 = 0; i3 < links.size; i3++) {
                        Research.ResearchLink researchLink = links.get(i3);
                        if (researchLink.child.installedLevel == 0 || researchLink.parent.installedLevel == 0) {
                            Node child = node.getChild(researchLink.parent.getShortName() + "-" + researchLink.child.getShortName(), false, false);
                            if (child != null) {
                                child.detach();
                            }
                        }
                    }
                    for (int i4 = 0; i4 < instances.size; i4++) {
                        Research research = instances.get(i4);
                        Node child2 = node.getChild(research.type.name(), false, false);
                        if (research.installedLevel == 0) {
                            if (child2 == null) {
                                Logger.error("MainMenuUiScene", "3d scene node not exists for research " + research.type.name());
                            } else {
                                child2.detach();
                            }
                        }
                    }
                }
                Node node2 = modelInstance.getNode("trophies");
                if (node2 != null) {
                    for (TrophyType trophyType3 : TrophyType.values) {
                        if (!Game.f8589i.trophyManager.getConfig(trophyType3).isReceived()) {
                            node2.getChild("t-" + trophyType3.name(), false, false).detach();
                            Node child3 = node2.getChild("t-" + trophyType3.name() + "-beam", false, false);
                            if (child3 != null) {
                                child3.detach();
                            }
                        }
                    }
                }
                this.f14737a.setModel(modelInstance, 0.18f);
            } catch (Exception e) {
                this.f14739c = width;
                Logger.error("MainMenuUiScene", "Failed to build 3d scene", e);
            }
        }
    }

    public void recreate() {
        this.f14739c = -1;
        if (!Game.f8589i.settingsManager.isThreeDeeModelsEnabled()) {
            ModelView modelView = this.f14737a;
            if (modelView != null) {
                modelView.dispose();
                this.f14737a = null;
            }
            this.f14738b.clearListeners();
            this.f14738b.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.MainMenuUiScene.1
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f, float f2) {
                    Game.f8589i.uiManager.trophiesListOverlay.show();
                }
            });
            this.f14738b.setTouchable(Touchable.enabled);
        } else if (this.f14737a == null) {
            Environment environment = new Environment();
            environment.set(new ColorAttribute(ColorAttribute.AmbientLight, 0.55f, 0.55f, 0.55f, 1.0f));
            final PointLight pointLight = new PointLight();
            environment.add(pointLight);
            final PointLight pointLight2 = new PointLight();
            environment.add(pointLight2);
            PointLight pointLight3 = new PointLight();
            pointLight3.set(MaterialColor.CYAN.P200, 0.0f, 0.5f, 0.0f, 0.3f);
            environment.add(pointLight3);
            final boolean[] zArr = {true};
            final float[] fArr = {0.0f};
            final float[] fArr2 = {0.38f};
            final float[] fArr3 = {0.0f};
            ModelView modelView2 = new ModelView(Gdx.graphics.getWidth(), Gdx.graphics.getHeight(), new ModelView.Transformer() { // from class: com.prineside.tdi2.ui.shared.MainMenuUiScene.2

                /* renamed from: a */
                public float f14741a = 20.0f;

                /* renamed from: b */
                public float f14742b = 360.0f;

                /* renamed from: c */
                public float f14743c = 25.0f;

                @Override // com.prineside.tdi2.p036ui.actors.ModelView.Transformer
                public void transform(ModelView modelView3, float f, float f2) {
                    if (zArr[0]) {
                        float f3 = this.f14743c * f;
                        float[] fArr4 = fArr3;
                        float f4 = fArr4[0];
                        float f5 = this.f14742b;
                        if (f4 < (-f5)) {
                            fArr4[0] = -f5;
                        } else if (f4 > f5) {
                            fArr4[0] = f5;
                        }
                        float f6 = fArr4[0];
                        if ((f6 < 0.0f && this.f14741a > 0.0f) || (f6 > 0.0f && this.f14741a < 0.0f)) {
                            this.f14741a = -this.f14741a;
                        }
                        float f7 = this.f14741a;
                        if (f6 < f7) {
                            float f8 = f6 + f3;
                            fArr4[0] = f8;
                            if (f8 > f7) {
                                fArr4[0] = f7;
                            }
                        } else if (f6 > f7) {
                            float f9 = f6 - f3;
                            fArr4[0] = f9;
                            if (f9 < f7) {
                                fArr4[0] = f7;
                            }
                        }
                        float[] fArr5 = fArr;
                        fArr5[0] = fArr5[0] + (fArr4[0] * f);
                    }
                    float[] fArr6 = fArr;
                    fArr6[0] = fArr6[0] % 360.0f;
                    float apply = Interpolation.circleOut.apply(1.0f - ((fArr2[0] / 1.15f) * 0.99f));
                    Vector2 pointByAngleFromPoint = PMath.getPointByAngleFromPoint(0.0f, 0.0f, fArr[0], 1.05f * apply);
                    if (modelView3 != null) {
                        PerspectiveCamera perspectiveCamera = modelView3.camera;
                        if (perspectiveCamera != null) {
                            Vector3 vector3 = perspectiveCamera.position;
                            if (vector3 != null) {
                                if (pointByAngleFromPoint != null) {
                                    vector3.set(pointByAngleFromPoint.f5527x, fArr2[0], pointByAngleFromPoint.f5528y);
                                    modelView3.camera.f3888up.set(0.0f, 1.0f, 0.0f);
                                    PMath.getPointByAngleFromPoint(0.0f, 0.0f, fArr[0] - 90.0f, ((0.7f * apply) + 0.3f) * 0.25f);
                                    modelView3.camera.lookAt(0.0f, apply * 0.35f, 0.0f);
                                    modelView3.camera.update();
                                    Vector2 pointByAngleFromPoint2 = PMath.getPointByAngleFromPoint(0.0f, 0.0f, fArr[0] - 45.0f, 3.0f);
                                    pointLight.set(0.5f, 0.5f, 0.5f, pointByAngleFromPoint2.f5527x, 3.0f, pointByAngleFromPoint2.f5528y, 5.0f);
                                    Vector2 pointByAngleFromPoint3 = PMath.getPointByAngleFromPoint(pointByAngleFromPoint.f5527x, pointByAngleFromPoint.f5528y, fArr[0] - 90.0f, 1.0f);
                                    pointLight2.set(0.55f, 0.55f, 0.55f, pointByAngleFromPoint3.f5527x, fArr2[0] + 1.0f, pointByAngleFromPoint3.f5528y, 10.0f);
                                    modelView3.requireRedraw();
                                    return;
                                }
                                throw new IllegalStateException("camPos is null");
                            }
                            throw new IllegalStateException("modelView.camera.position is null");
                        }
                        throw new IllegalStateException("modelView.camera is null");
                    }
                    throw new IllegalStateException("modelView is null");
                }
            }, environment, true);
            this.f14737a = modelView2;
            modelView2.addListener(new ActorGestureListener() { // from class: com.prineside.tdi2.ui.shared.MainMenuUiScene.3
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener
                public void fling(InputEvent inputEvent, float f, float f2, int i) {
                    fArr3[0] = f * 0.05f;
                }

                @Override // com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener
                public void tap(InputEvent inputEvent, float f, float f2, int i, int i2) {
                    Game.f8589i.uiManager.trophiesListOverlay.show();
                }

                @Override // com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener
                public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
                    zArr[0] = true;
                }

                @Override // com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener
                public void zoom(InputEvent inputEvent, float f, float f2) {
                }

                @Override // com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener
                public void pan(InputEvent inputEvent, float f, float f2, float f3, float f4) {
                    float[] fArr4 = fArr;
                    fArr4[0] = fArr4[0] + (f3 * 0.1f);
                    float[] fArr5 = fArr2;
                    float f5 = fArr5[0] - (f4 * 0.001f);
                    fArr5[0] = f5;
                    fArr5[0] = MathUtils.clamp(f5, 0.3f, 1.15f);
                }

                @Override // com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener
                public void touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                    zArr[0] = false;
                    fArr3[0] = 0.0f;
                }
            });
        }
    }

    public MainMenuUiScene() {
        recreate();
    }
}
