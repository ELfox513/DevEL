package net.bytebuddy.dynamic;

import net.bytebuddy.description.method.MethodDescription;
/* loaded from: classes2.dex */
public interface VisibilityBridgeStrategy {

    /* loaded from: classes2.dex */
    public enum Default implements VisibilityBridgeStrategy {
        ALWAYS { // from class: net.bytebuddy.dynamic.VisibilityBridgeStrategy.Default.1
            @Override // net.bytebuddy.dynamic.VisibilityBridgeStrategy
            public boolean generateVisibilityBridge(MethodDescription methodDescription) {
                return true;
            }
        },
        ON_NON_GENERIC_METHOD { // from class: net.bytebuddy.dynamic.VisibilityBridgeStrategy.Default.2
            @Override // net.bytebuddy.dynamic.VisibilityBridgeStrategy
            public boolean generateVisibilityBridge(MethodDescription methodDescription) {
                return !methodDescription.isGenerified();
            }
        },
        NEVER { // from class: net.bytebuddy.dynamic.VisibilityBridgeStrategy.Default.3
            @Override // net.bytebuddy.dynamic.VisibilityBridgeStrategy
            public boolean generateVisibilityBridge(MethodDescription methodDescription) {
                return false;
            }
        }
    }

    boolean generateVisibilityBridge(MethodDescription methodDescription);
}
