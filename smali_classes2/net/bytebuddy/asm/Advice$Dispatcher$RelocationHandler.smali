.class public interface abstract Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RelocationHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;
    }
.end annotation


# virtual methods
.method public abstract bind(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;
.end method
