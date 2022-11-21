.class public interface abstract Lnet/bytebuddy/asm/Advice$OffsetMapping;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OffsetMapping"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForSerializedValue;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForReturnValue;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForLocalValue;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForExitValue;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStubValue;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;
    }
.end annotation


# virtual methods
.method public abstract resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler;Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;
.end method
