.class public interface abstract Lnet/bytebuddy/implementation/LoadedTypeInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;,
        Lnet/bytebuddy/implementation/LoadedTypeInitializer$ForStaticField;,
        Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;
    }
.end annotation


# virtual methods
.method public abstract isAlive()Z
.end method

.method public abstract onLoad(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method
