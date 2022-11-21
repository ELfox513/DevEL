.class public interface abstract Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandles$Lookup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Lookup"
.end annotation

.annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    value = "java.lang.invoke.MethodHandles$Lookup"
.end annotation


# virtual methods
.method public abstract lookupClass(Ljava/lang/Object;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "lookupClass"
    .end annotation
.end method

.method public abstract revealDirect(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
            value = "java.lang.invoke.MethodHandle"
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "revealDirect"
    .end annotation
.end method
