package com.prineside.tdi2.managers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.enums.TriggeredActionType;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class TriggeredActionManager extends Manager.ManagerAdapter {

    /* renamed from: com.prineside.tdi2.managers.TriggeredActionManager$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C18881 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f10208a;

        static {
            int[] iArr = new int[TriggeredActionType.values().length];
            f10208a = iArr;
            try {
                iArr[TriggeredActionType.GIVE_COINS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<TriggeredActionManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public TriggeredActionManager read() {
            return Game.f8589i.triggeredActionManager;
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void clearPools() {
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public String getTitleAlias(TriggeredActionType triggeredActionType) {
        return "triggered_action_" + triggeredActionType.name();
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void postRender(float f) {
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void preRender(float f) {
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void test() {
    }

    public Group generateIcon(TriggeredActionType triggeredActionType, float f, Color color) {
        Image image;
        Group group = new Group();
        group.setTransform(false);
        group.setSize(f, f);
        if (C18881.f10208a[triggeredActionType.ordinal()] != 1) {
            image = null;
        } else {
            image = new Image(Game.f8589i.assetManager.getDrawable("icon-coins"));
        }
        if (image != null) {
            image.setColor(color);
            image.setSize(f, f);
            group.addActor(image);
        }
        return group;
    }

    public void perform(GameSystemProvider gameSystemProvider, TriggeredActionType triggeredActionType, float f) {
        if (C18881.f10208a[triggeredActionType.ordinal()] != 1) {
            Logger.error("TriggeredActionManager", "action not implemented: " + triggeredActionType);
            return;
        }
        gameSystemProvider.gameState.addMoney(f, false);
    }
}
