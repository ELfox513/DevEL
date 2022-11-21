.class public interface abstract Lnet/bytebuddy/implementation/FieldAccessor$PropertyConfigurable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FieldAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PropertyConfigurable"
.end annotation


# virtual methods
.method public abstract setsArgumentAt(I)Lnet/bytebuddy/implementation/Implementation$Composable;
.end method

.method public abstract setsDefaultValue()Lnet/bytebuddy/implementation/Implementation$Composable;
.end method

.method public abstract setsFieldValueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/Implementation$Composable;
.end method

.method public abstract setsFieldValueOf(Ljava/lang/reflect/Field;)Lnet/bytebuddy/implementation/Implementation$Composable;
.end method

.method public abstract setsFieldValueOf(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/Implementation$Composable;
.end method

.method public abstract setsFieldValueOf(Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;)Lnet/bytebuddy/implementation/Implementation$Composable;
.end method

.method public abstract setsReference(Ljava/lang/Object;)Lnet/bytebuddy/implementation/Implementation$Composable;
.end method

.method public abstract setsReference(Ljava/lang/Object;Ljava/lang/String;)Lnet/bytebuddy/implementation/Implementation$Composable;
.end method

.method public abstract setsValue(Ljava/lang/Object;)Lnet/bytebuddy/implementation/Implementation$Composable;
.end method

.method public abstract setsValue(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/Implementation$Composable;
.end method

.method public abstract setsValue(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/Implementation$Composable;
.end method

.method public abstract setsValue(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/Implementation$Composable;
.end method

.method public abstract setsValue(Lnet/bytebuddy/utility/JavaConstant;)Lnet/bytebuddy/implementation/Implementation$Composable;
.end method
