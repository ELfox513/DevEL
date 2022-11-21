package com.prineside.tdi2.managers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.PerspectiveCamera;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.PixmapIO;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.graphics.g3d.Environment;
import com.badlogic.gdx.graphics.g3d.ModelInstance;
import com.badlogic.gdx.graphics.g3d.attributes.ColorAttribute;
import com.badlogic.gdx.graphics.g3d.environment.PointLight;
import com.badlogic.gdx.graphics.g3d.model.Node;
import com.badlogic.gdx.graphics.glutils.FrameBuffer;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.ScreenUtils;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.TrophyType;
import com.prineside.tdi2.items.TrophyItem;
import com.prineside.tdi2.managers.GameValueManager;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
import java.nio.Buffer;
import java.util.Iterator;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class TrophyManager extends Manager.ManagerAdapter {

    /* renamed from: a */
    public final TrophyConfig[] f10209a = new TrophyConfig[TrophyType.values.length];

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<TrophyManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public TrophyManager read() {
            return Game.f8589i.trophyManager;
        }
    }

    /* loaded from: classes2.dex */
    public class TrophyConfig {

        /* renamed from: a */
        public String f10211a;

        /* renamed from: b */
        public String f10212b;

        /* renamed from: c */
        public String f10213c;

        /* renamed from: d */
        public boolean f10214d;

        /* renamed from: e */
        public boolean f10215e;
        public Array<GameValueManager.GameValueEffect> gameValues;
        public TrophyType type;

        public TrophyConfig() {
        }

        public TextureRegion getIconTexture() {
            return Game.f8589i.assetManager.getTextureRegion(this.f10213c);
        }

        public String getTitle() {
            return Game.f8589i.localeManager.i18n.get(this.f10211a);
        }

        public TextureRegion getWhiteTexture() {
            return Game.f8589i.assetManager.getTextureRegion(this.f10212b);
        }

        /* renamed from: c */
        public final void m21458c(TrophyType trophyType, Array<GameValueManager.GameValueEffect> array) {
            this.type = trophyType;
            this.gameValues = array;
            this.f10211a = "tr_title_" + trophyType.name();
            this.f10212b = "trophy-" + trophyType.name() + "-white";
            StringBuilder sb = new StringBuilder();
            sb.append("trophy-");
            sb.append(trophyType.name());
            this.f10213c = sb.toString();
            this.f10215e = true;
        }

        public boolean isReceived() {
            if (this.f10215e) {
                DelayedRemovalArray<ItemStack> itemsByType = Game.f8589i.progressManager.getItemsByType(ItemType.TROPHY);
                for (int i = 0; i < itemsByType.size; i++) {
                    if (((TrophyItem) itemsByType.get(i).getItem()).trophyType == this.type) {
                        return true;
                    }
                }
                return false;
            }
            throw new IllegalStateException("Config is not setup");
        }
    }

    public TrophyConfig getConfig(TrophyType trophyType) {
        return this.f10209a[trophyType.ordinal()];
    }

    public TrophyConfig[] getConfigs() {
        return this.f10209a;
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        Game.f8589i.preferencesManager.addListener(new PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.TrophyManager.1
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
                TrophyManager.this.reload();
            }
        });
    }

    public final void reload() {
        Iterator<JsonValue> iterator2 = new JsonReader().parse(Gdx.files.internal("res/trophies.json")).iterator2();
        int i = 0;
        while (iterator2.hasNext()) {
            JsonValue next = iterator2.next();
            try {
                TrophyType valueOf = TrophyType.valueOf(next.name);
                TrophyConfig config = getConfig(valueOf);
                config.f10214d = false;
                Array array = new Array(GameValueManager.GameValueEffect.class);
                Iterator<JsonValue> iterator22 = next.get("gameValues").iterator2();
                while (iterator22.hasNext()) {
                    JsonValue next2 = iterator22.next();
                    array.add(new GameValueManager.GameValueEffect(GameValueType.valueOf(next2.name), next2.asDouble()));
                }
                config.m21458c(valueOf, array);
                i++;
            } catch (Exception e) {
                Logger.error("TrophyManager", "failed to load game value config '" + next.name + "'", e);
            }
        }
        if (i == this.f10209a.length) {
            Game.f8589i.gameValueManager.requireRecalculation();
            return;
        }
        throw new RuntimeException("Loaded only " + i + " out of " + this.f10209a.length + " trophy configs");
    }

    public void renderPreviews(String str, int i, float f) {
        FrameBuffer frameBuffer = new FrameBuffer(Pixmap.Format.RGBA8888, i, i, true);
        float f2 = i;
        PerspectiveCamera perspectiveCamera = new PerspectiveCamera(67.0f, f2, f2);
        perspectiveCamera.position.set(0.32f, 0.4f, 0.55f);
        float f3 = 0.0f;
        perspectiveCamera.lookAt(0.0f, 0.0f, 0.0f);
        perspectiveCamera.near = 0.01f;
        perspectiveCamera.far = 300.0f;
        perspectiveCamera.update();
        Environment environment = new Environment();
        environment.set(new ColorAttribute(ColorAttribute.AmbientLight, 0.6f, 0.6f, 0.6f, 1.0f));
        environment.add(new PointLight().set(1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 2.0f));
        TrophyType[] trophyTypeArr = TrophyType.values;
        int length = trophyTypeArr.length;
        int i2 = 0;
        while (i2 < length) {
            TrophyType trophyType = trophyTypeArr[i2];
            String str2 = str + trophyType.name() + ".png";
            String str3 = "t-" + trophyType.name();
            ModelInstance modelInstance = new ModelInstance(Game.f8589i.assetManager.getSceneModel(), str3, true, true, true);
            Node node = modelInstance.getNode(str3);
            node.translation.set(f3, f3, f3);
            node.rotation.setFromAxis(Vector3.f5529X, -90.0f);
            modelInstance.calculateTransforms();
            modelInstance.transform.setToTranslationAndScaling(new Vector3(f3, f3, f3), new Vector3(f, f, f));
            frameBuffer.begin();
            GL20 gl20 = Gdx.f3119gl;
            Color color = Config.BACKGROUND_COLOR;
            gl20.glClearColor(color.f3892r, color.f3891g, color.f3890b, f3);
            Gdx.f3119gl.glClear(16640);
            Game.f8589i.renderingManager.modelBatch.begin(perspectiveCamera);
            Game.f8589i.renderingManager.modelBatch.render(modelInstance, environment);
            Game.f8589i.renderingManager.modelBatch.end();
            byte[] frameBufferPixels = ScreenUtils.getFrameBufferPixels(0, 0, frameBuffer.getWidth(), frameBuffer.getHeight(), true);
            Pixmap pixmap = new Pixmap(frameBuffer.getWidth(), frameBuffer.getHeight(), Pixmap.Format.RGBA8888);
            BufferUtils.copy(frameBufferPixels, 0, (Buffer) pixmap.getPixels(), frameBufferPixels.length);
            PixmapIO.writePNG(Gdx.files.local(str2), pixmap);
            pixmap.dispose();
            frameBuffer.end();
            i2++;
            f3 = 0.0f;
        }
        frameBuffer.dispose();
        Logger.log("TrophyManager", "trophies rendered");
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void test() {
        for (TrophyConfig trophyConfig : this.f10209a) {
            trophyConfig.getTitle();
        }
    }

    public TrophyManager() {
        for (int i = 0; i < TrophyType.values.length; i++) {
            this.f10209a[i] = new TrophyConfig();
        }
        reload();
    }
}
