package com.prineside.tdi2.managers;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.badlogic.gdx.utils.Timer;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.Registration;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import com.esotericsoftware.kryo.util.MapReferenceResolver;
import com.esotericsoftware.kryo.util.Util;
import com.esotericsoftware.kryonet.Client;
import com.esotericsoftware.kryonet.Connection;
import com.esotericsoftware.kryonet.FrameworkMessage;
import com.esotericsoftware.kryonet.Listener;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.actions.BuildMinerAction;
import com.prineside.tdi2.actions.BuildModifierAction;
import com.prineside.tdi2.actions.BuildTowerAction;
import com.prineside.tdi2.actions.CallWaveAction;
import com.prineside.tdi2.actions.ChangeTowerAimStrategyAction;
import com.prineside.tdi2.actions.CustomTowerButtonAction;
import com.prineside.tdi2.actions.GlobalUpgradeMinerAction;
import com.prineside.tdi2.actions.GlobalUpgradeTowerAction;
import com.prineside.tdi2.actions.RewardingAdAction;
import com.prineside.tdi2.actions.SelectGlobalTowerAbilityAction;
import com.prineside.tdi2.actions.SelectTowerAbilityAction;
import com.prineside.tdi2.actions.SellMinerAction;
import com.prineside.tdi2.actions.SellModifierAction;
import com.prineside.tdi2.actions.SellTowerAction;
import com.prineside.tdi2.actions.UpgradeMinerAction;
import com.prineside.tdi2.actions.UpgradeTowerAction;
import com.prineside.tdi2.actions.UseAbilityAction;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.MinerType;
import com.prineside.tdi2.enums.ModifierType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.p036ui.shared.AbilitySelectionOverlay;
import com.prineside.tdi2.serializers.ArraySerializer;
import com.prineside.tdi2.serializers.IntIntMapSerializer;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.systems.StateSystem;
import com.prineside.tdi2.utils.REGS;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import java.util.Comparator;
import java.util.EnumSet;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class NetworkManager extends Manager.ManagerAdapter {

    /* renamed from: d */
    public static final Comparator<Class> f9923d = new Comparator<Class>() { // from class: com.prineside.tdi2.managers.NetworkManager.1
        @Override // java.util.Comparator
        public int compare(Class cls, Class cls2) {
            return cls.getName().compareTo(cls2.getName());
        }
    };

    /* renamed from: a */
    public Client f9924a;

    /* renamed from: b */
    public Thread f9925b;
    public KryoForState fullKryo;
    public Array<Registration> registeredClasses = new Array<>(Registration.class);

    /* loaded from: classes2.dex */
    public class KryoForState extends Kryo {
        public KryoForState() {
        }

        @Override // com.esotericsoftware.kryo.Kryo
        public Registration register(Registration registration) {
            super.register(registration);
            NetworkManager.this.registeredClasses.add(registration);
            return registration;
        }

        @Override // com.esotericsoftware.kryo.Kryo
        public Registration getRegistration(Class cls) {
            if (cls != null) {
                Registration registration = getClassResolver().getRegistration(cls);
                if (registration == null) {
                    if (Proxy.isProxyClass(cls)) {
                        registration = getRegistration(InvocationHandler.class);
                    } else if (!cls.isEnum() && Enum.class.isAssignableFrom(cls) && !Enum.class.equals(cls)) {
                        registration = getRegistration(cls.getEnclosingClass());
                    } else if (EnumSet.class.isAssignableFrom(cls)) {
                        registration = getClassResolver().getRegistration(EnumSet.class);
                    }
                    if (registration == null) {
                        if (isRegistrationRequired()) {
                            StringBuilder stringBuilder = new StringBuilder();
                            stringBuilder.append("Class is not registered: ").append(Util.className(cls)).append("\n");
                            stringBuilder.append("  Registry:\n");
                            int i = 0;
                            while (true) {
                                Array<Registration> array = NetworkManager.this.registeredClasses;
                                if (i >= array.size) {
                                    break;
                                }
                                Registration registration2 = array.items[i];
                                stringBuilder.append("  - ").append(registration2.getId()).append(" ").append(registration2.getType().getName()).append(" ").append(registration2.getSerializer().getClass().getSimpleName()).append("\n");
                                i++;
                            }
                            throw new IllegalArgumentException(stringBuilder.toString());
                        }
                        Logger.error("NetworkManager", "not registered: " + Util.className(cls));
                        return getClassResolver().registerImplicit(cls);
                    }
                    return registration;
                }
                return registration;
            }
            throw new IllegalArgumentException("type cannot be null.");
        }

        public boolean hasRegistration(Class cls) {
            if (cls != null) {
                Registration registration = getClassResolver().getRegistration(cls);
                if (registration == null) {
                    if (Proxy.isProxyClass(cls)) {
                        registration = getRegistration(InvocationHandler.class);
                    } else if (!cls.isEnum() && Enum.class.isAssignableFrom(cls) && !Enum.class.equals(cls)) {
                        registration = getRegistration(cls.getEnclosingClass());
                    } else if (EnumSet.class.isAssignableFrom(cls)) {
                        registration = getClassResolver().getRegistration(EnumSet.class);
                    }
                }
                if (registration != null) {
                    return true;
                }
                return false;
            }
            throw new IllegalArgumentException("type cannot be null.");
        }

        @Override // com.esotericsoftware.kryo.Kryo
        public Registration register(Class cls, com.esotericsoftware.kryo.Serializer serializer) {
            Registration register = super.register(cls, serializer);
            NetworkManager.this.registeredClasses.add(register);
            return register;
        }
    }

    /* loaded from: classes2.dex */
    public static class NetBundle implements KryoSerializable {

        /* renamed from: id */
        public int f9931id;
        public String message;

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f9931id = input.readVarInt(true);
            this.message = (String) kryo.readObject(input, String.class);
        }

        public String toString() {
            return "NetBundle (" + this.f9931id + ", " + this.message + ")";
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            output.writeVarInt(this.f9931id, true);
            kryo.writeObject(output, this.message);
        }
    }

    /* loaded from: classes2.dex */
    public static class NetReqConnect implements KryoSerializable {
        public Application.ApplicationType applicationType;
        public String locale;
        public String userId;

        public String toString() {
            return "NetReqConnect (" + this.userId + ", " + this.applicationType.name() + ", " + this.locale + ")";
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.userId = (String) kryo.readObject(input, String.class);
            this.locale = (String) kryo.readObject(input, String.class);
            this.applicationType = (Application.ApplicationType) kryo.readObject(input, Application.ApplicationType.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.userId);
            kryo.writeObject(output, this.locale);
            kryo.writeObject(output, this.applicationType);
        }
    }

    /* loaded from: classes2.dex */
    public static class NetRespConnect implements KryoSerializable {
        public String text;

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.text = (String) kryo.readObject(input, String.class);
        }

        public String toString() {
            return "NetRespConnect (" + this.text + ")";
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.text);
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<NetworkManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public NetworkManager read() {
            return Game.f8589i.networkManager;
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public void prepareMultiplayerKryo(Kryo kryo) {
        kryo.setMaxDepth(4);
        kryo.setRegistrationRequired(true);
        kryo.register(NetReqConnect.class);
        kryo.register(NetRespConnect.class);
        kryo.register(NetBundle.class);
        kryo.register(Application.ApplicationType.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m21570d(String str, String str2, String str3) {
        Logger.log("NetworkManager", "trying to start net connection for " + str);
        String[] split = str.split(":");
        if (split.length < 2) {
            Logger.log("NetworkManager", "skipping multiplayer test endpoint - incorrect IP config: " + str);
            return;
        }
        try {
            String str4 = split[0];
            int i = -1;
            int parseInt = Integer.parseInt(split[1]);
            if (split.length >= 3) {
                i = Integer.parseInt(split[2]);
            }
            long realTickCount = Game.getRealTickCount();
            Client client = new Client();
            this.f9924a = client;
            prepareMultiplayerKryo(client.getKryo());
            this.f9924a.start();
            this.f9924a.connect(5000, str4, parseInt, i);
            Logger.log("NetworkManager", "net client created successfully in " + (((float) (Game.getRealTickCount() - realTickCount)) * 0.001f) + "ms");
            this.f9924a.addListener(new Listener() { // from class: com.prineside.tdi2.managers.NetworkManager.4
                @Override // com.esotericsoftware.kryonet.Listener
                public void connected(Connection connection) {
                    Logger.log("NetworkManager", "connected " + connection);
                }

                @Override // com.esotericsoftware.kryonet.Listener
                public void disconnected(Connection connection) {
                    Logger.log("NetworkManager", "disconnected " + connection);
                }

                @Override // com.esotericsoftware.kryonet.Listener
                public void received(Connection connection, Object obj) {
                    if (!(obj instanceof FrameworkMessage.KeepAlive)) {
                        Logger.log("NetworkManager", "received " + connection + " " + obj);
                        boolean z = obj instanceof NetBundle;
                    }
                }
            });
            try {
                long realTickCount2 = Game.getRealTickCount();
                NetReqConnect netReqConnect = new NetReqConnect();
                netReqConnect.applicationType = Gdx.app.getType();
                netReqConnect.userId = str2;
                netReqConnect.locale = str3;
                this.f9924a.sendTCP(netReqConnect);
                Logger.log("NetworkManager", "sent connection request in " + (((float) (Game.getRealTickCount() - realTickCount2)) * 0.001f) + "ms");
            } catch (Exception e) {
                Logger.error("NetworkManager", "failed to send connection request to the server", e);
            }
        } catch (Exception e2) {
            Logger.error("NetworkManager", "failed to create net client for " + str, e2);
        }
    }

    public static void prepareNetworkKryo(KryoForState kryoForState) {
        kryoForState.setMaxDepth(8);
        kryoForState.setRegistrationRequired(true);
        kryoForState.register(IntIntMap.class, new IntIntMapSerializer());
        kryoForState.register(Array.class, new ArraySerializer());
        kryoForState.register(AbilitySelectionOverlay.SelectedAbilitiesConfiguration.class);
        kryoForState.register(AbilityType.class);
        kryoForState.register(TowerType.class);
        kryoForState.register(Tower.AimStrategy.class);
        kryoForState.register(ModifierType.class);
        kryoForState.register(MinerType.class);
        kryoForState.register(StateSystem.ActionUpdatePair.class);
        kryoForState.register(BuildMinerAction.class);
        kryoForState.register(BuildModifierAction.class);
        kryoForState.register(BuildTowerAction.class);
        kryoForState.register(CallWaveAction.class);
        kryoForState.register(RewardingAdAction.class);
        kryoForState.register(ChangeTowerAimStrategyAction.class);
        kryoForState.register(CustomTowerButtonAction.class);
        kryoForState.register(GlobalUpgradeMinerAction.class);
        kryoForState.register(GlobalUpgradeTowerAction.class);
        kryoForState.register(SelectGlobalTowerAbilityAction.class);
        kryoForState.register(SelectTowerAbilityAction.class);
        kryoForState.register(SellMinerAction.class);
        kryoForState.register(SellModifierAction.class);
        kryoForState.register(SellTowerAction.class);
        kryoForState.register(UpgradeMinerAction.class);
        kryoForState.register(UpgradeTowerAction.class);
        kryoForState.register(UseAbilityAction.class);
        kryoForState.register(FrameworkMessage.RegisterUDP.class, new FieldSerializer(kryoForState, FrameworkMessage.RegisterUDP.class));
        kryoForState.register(FrameworkMessage.DiscoverHost.class, new FieldSerializer(kryoForState, FrameworkMessage.DiscoverHost.class));
        kryoForState.register(FrameworkMessage.KeepAlive.class, new FieldSerializer(kryoForState, FrameworkMessage.KeepAlive.class));
        kryoForState.register(FrameworkMessage.Ping.class, new FieldSerializer(kryoForState, FrameworkMessage.Ping.class));
        kryoForState.register(FrameworkMessage.RegisterTCP.class, new FieldSerializer(kryoForState, FrameworkMessage.RegisterTCP.class));
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x01d5, code lost:
        com.prineside.tdi2.Logger.error("NetworkManager", "REGS should not be used on non-static inner class " + r10);
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21569e(com.prineside.tdi2.managers.NetworkManager.KryoForState r20) {
        /*
            Method dump skipped, instructions count: 913
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.managers.NetworkManager.m21569e(com.prineside.tdi2.managers.NetworkManager$KryoForState):void");
    }

    /* renamed from: f */
    public final void m21568f() {
        Client client = this.f9924a;
        if (client != null) {
            client.stop();
            this.f9924a = null;
        }
        Thread thread = this.f9925b;
        if (thread != null) {
            thread.interrupt();
            this.f9925b = null;
        }
        final String dynamicSetting = Game.f8589i.settingsManager.getDynamicSetting(SettingsManager.DynamicSetting.MULTIPLAYER_TEST_ENDPOINT);
        final String playerId = Game.f8589i.authManager.getPlayerId();
        final String locale = Game.f8589i.localeManager.getLocale();
        if (!"null".equals(dynamicSetting)) {
            Thread thread2 = new Thread(new Runnable() { // from class: com.prineside.tdi2.managers.p
                @Override // java.lang.Runnable
                public final void run() {
                    NetworkManager.this.m21570d(dynamicSetting, playerId, locale);
                }
            }, "Net client test");
            this.f9925b = thread2;
            thread2.start();
            return;
        }
        Logger.log("NetworkManager", "network test canceled - host not specified");
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        KryoForState kryoForState = new KryoForState();
        this.fullKryo = kryoForState;
        kryoForState.setReferenceResolver(new MapReferenceResolver() { // from class: com.prineside.tdi2.managers.NetworkManager.2
            @Override // com.esotericsoftware.kryo.util.MapReferenceResolver, com.esotericsoftware.kryo.ReferenceResolver
            public Object getReadObject(Class cls, int i) {
                Object readObject = super.getReadObject(cls, i);
                if (readObject == null) {
                    Logger.error("NetworkManager", "the object by ref " + i + " of type " + cls + " is null");
                }
                return readObject;
            }
        });
        m21569e(this.fullKryo);
        if (!Config.isHeadless()) {
            Timer.schedule(new Timer.Task() { // from class: com.prineside.tdi2.managers.NetworkManager.3
                @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
                public void run() {
                    if (!"null".equals(Game.f8589i.settingsManager.getDynamicSetting(SettingsManager.DynamicSetting.MULTIPLAYER_TEST_ENDPOINT))) {
                        NetworkManager.this.m21568f();
                        Timer.schedule(new Timer.Task() { // from class: com.prineside.tdi2.managers.NetworkManager.3.1
                            @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
                            public void run() {
                                if (NetworkManager.this.f9924a == null || !NetworkManager.this.f9924a.isConnected()) {
                                    NetworkManager.this.m21568f();
                                }
                            }
                        }, 35.0f, 30.0f);
                    }
                }
            }, 3.0f);
        }
    }
}
