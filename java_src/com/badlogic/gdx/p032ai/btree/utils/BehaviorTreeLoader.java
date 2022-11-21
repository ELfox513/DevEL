package com.badlogic.gdx.p032ai.btree.utils;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader;
import com.badlogic.gdx.assets.loaders.FileHandleResolver;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.p032ai.btree.BehaviorTree;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.StreamUtils;
import java.io.Reader;
/* renamed from: com.badlogic.gdx.ai.btree.utils.BehaviorTreeLoader */
/* loaded from: classes.dex */
public class BehaviorTreeLoader extends AsynchronousAssetLoader<BehaviorTree, BehaviorTreeParameter> {

    /* renamed from: b */
    public BehaviorTree f3225b;

    /* renamed from: com.badlogic.gdx.ai.btree.utils.BehaviorTreeLoader$BehaviorTreeParameter */
    /* loaded from: classes.dex */
    public static class BehaviorTreeParameter extends AssetLoaderParameters<BehaviorTree> {
        public final Object blackboard;
        public final BehaviorTreeParser parser;

        public BehaviorTreeParameter() {
            this(null);
        }

        public BehaviorTreeParameter(Object obj) {
            this(obj, null);
        }

        public BehaviorTreeParameter(Object obj, BehaviorTreeParser behaviorTreeParser) {
            this.blackboard = obj;
            this.parser = behaviorTreeParser;
        }
    }

    public BehaviorTreeLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
    }

    @Override // com.badlogic.gdx.assets.loaders.AssetLoader
    public Array<AssetDescriptor> getDependencies(String str, FileHandle fileHandle, BehaviorTreeParameter behaviorTreeParameter) {
        return null;
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public void loadAsync(AssetManager assetManager, String str, FileHandle fileHandle, BehaviorTreeParameter behaviorTreeParameter) {
        Object obj;
        BehaviorTreeParser behaviorTreeParser;
        Reader reader = null;
        this.f3225b = null;
        if (behaviorTreeParameter != null) {
            obj = behaviorTreeParameter.blackboard;
            behaviorTreeParser = behaviorTreeParameter.parser;
        } else {
            obj = null;
            behaviorTreeParser = null;
        }
        if (behaviorTreeParser == null) {
            behaviorTreeParser = new BehaviorTreeParser();
        }
        try {
            reader = fileHandle.reader();
            this.f3225b = behaviorTreeParser.parse(reader, (Reader) obj);
        } finally {
            StreamUtils.closeQuietly(reader);
        }
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public BehaviorTree loadSync(AssetManager assetManager, String str, FileHandle fileHandle, BehaviorTreeParameter behaviorTreeParameter) {
        BehaviorTree behaviorTree = this.f3225b;
        this.f3225b = null;
        return behaviorTree;
    }
}
