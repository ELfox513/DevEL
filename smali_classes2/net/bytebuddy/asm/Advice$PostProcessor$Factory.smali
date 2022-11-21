.class public interface abstract Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$PostProcessor$Factory$Compound;
    }
.end annotation


# virtual methods
.method public abstract make(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Z)Lnet/bytebuddy/asm/Advice$PostProcessor;
.end method
