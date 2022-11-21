.class public interface abstract Lnet/bytebuddy/asm/MemberSubstitution$Replacement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Replacement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;,
        Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;,
        Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;,
        Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;,
        Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;,
        Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;
    }
.end annotation


# virtual methods
.method public abstract bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Z)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;
.end method

.method public abstract bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;
.end method
