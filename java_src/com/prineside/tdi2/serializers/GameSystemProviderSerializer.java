package com.prineside.tdi2.serializers;

import com.badlogic.gdx.utils.Array;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.GameSystemProvider;
@Deprecated
/* loaded from: classes2.dex */
public class GameSystemProviderSerializer extends Serializer<GameSystemProvider> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.esotericsoftware.kryo.Serializer
    public GameSystemProvider read(Kryo kryo, Input input, Class<? extends GameSystemProvider> cls) {
        GameSystemProvider gameSystemProvider = new GameSystemProvider(new GameSystemProvider.SystemsConfig(GameSystemProvider.SystemsConfig.Setup.GAME, true));
        byte readByte = input.readByte();
        for (int i = 0; i < readByte; i++) {
            gameSystemProvider.addSystem((GameSystem) kryo.readClassAndObject(input));
        }
        return gameSystemProvider;
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, GameSystemProvider gameSystemProvider) {
        Array<GameSystem> systemsOrdered = gameSystemProvider.getSystemsOrdered();
        int i = 0;
        for (int i2 = 0; i2 < systemsOrdered.size; i2++) {
            if (systemsOrdered.items[i2].affectsGameState()) {
                i++;
            }
        }
        output.writeByte(i);
        for (int i3 = 0; i3 < systemsOrdered.size; i3++) {
            GameSystem gameSystem = systemsOrdered.items[i3];
            if (gameSystem.affectsGameState()) {
                kryo.writeClassAndObject(output, gameSystem);
            }
        }
    }
}
