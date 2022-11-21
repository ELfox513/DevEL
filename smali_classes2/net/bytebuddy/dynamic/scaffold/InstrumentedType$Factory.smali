.class public interface abstract Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;
    }
.end annotation


# virtual methods
.method public abstract represent(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
.end method

.method public abstract subclass(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
.end method
