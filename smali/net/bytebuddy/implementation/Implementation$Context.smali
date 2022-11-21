.class public interface abstract Lnet/bytebuddy/implementation/Implementation$Context;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodAccessorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Context"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/Implementation$Context$Default;,
        Lnet/bytebuddy/implementation/Implementation$Context$Disabled;,
        Lnet/bytebuddy/implementation/Implementation$Context$Factory;,
        Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;
    }
.end annotation


# virtual methods
.method public abstract cache(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;
.end method

.method public abstract getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;
.end method

.method public abstract getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;
.end method

.method public abstract register(Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;)Lnet/bytebuddy/description/type/TypeDescription;
.end method
