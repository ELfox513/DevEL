.class public interface abstract Lnet/bytebuddy/description/method/MethodDescription;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/TypeVariableSource;
.implements Lnet/bytebuddy/description/DeclaredByType$WithMandatoryDeclaration;
.implements Lnet/bytebuddy/description/ModifierReviewable$ForMethodDescription;
.implements Lnet/bytebuddy/description/NamedElement$WithGenericName;
.implements Lnet/bytebuddy/description/ByteCodeElement;
.implements Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/method/MethodDescription$TypeToken;,
        Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;,
        Lnet/bytebuddy/description/method/MethodDescription$Token;,
        Lnet/bytebuddy/description/method/MethodDescription$TypeSubstituting;,
        Lnet/bytebuddy/description/method/MethodDescription$Latent;,
        Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;,
        Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;,
        Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;,
        Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;,
        Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/TypeVariableSource;",
        "Lnet/bytebuddy/description/DeclaredByType$WithMandatoryDeclaration;",
        "Lnet/bytebuddy/description/ModifierReviewable$ForMethodDescription;",
        "Lnet/bytebuddy/description/NamedElement$WithGenericName;",
        "Lnet/bytebuddy/description/ByteCodeElement;",
        "Lnet/bytebuddy/description/ByteCodeElement$TypeDependant<",
        "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
        "Lnet/bytebuddy/description/method/MethodDescription$Token;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONSTRUCTOR_INTERNAL_NAME:Ljava/lang/String; = "<init>"

.field public static final TYPE_INITIALIZER_INTERNAL_NAME:Ljava/lang/String; = "<clinit>"

.field public static final TYPE_INITIALIZER_MODIFIER:I = 0x8

.field public static final UNDEFINED:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;
.end method

.method public abstract asTypeToken()Lnet/bytebuddy/description/method/MethodDescription$TypeToken;
.end method

.method public abstract getActualModifiers()I
.end method

.method public abstract getActualModifiers(Z)I
.end method

.method public abstract getActualModifiers(ZLnet/bytebuddy/description/modifier/Visibility;)I
.end method

.method public abstract getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;
.end method

.method public abstract getParameters()Lnet/bytebuddy/description/method/ParameterList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
.end method

.method public abstract getStackSize()I
.end method

.method public abstract isBridgeCompatible(Lnet/bytebuddy/description/method/MethodDescription$TypeToken;)Z
.end method

.method public abstract isConstantBootstrap()Z
.end method

.method public abstract isConstantBootstrap(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract isConstructor()Z
.end method

.method public abstract isDefaultMethod()Z
.end method

.method public abstract isDefaultValue()Z
.end method

.method public abstract isDefaultValue(Lnet/bytebuddy/description/annotation/AnnotationValue;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;)Z"
        }
    .end annotation
.end method

.method public abstract isInvokableOn(Lnet/bytebuddy/description/type/TypeDescription;)Z
.end method

.method public abstract isInvokeBootstrap()Z
.end method

.method public abstract isInvokeBootstrap(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract isMethod()Z
.end method

.method public abstract isSpecializableFor(Lnet/bytebuddy/description/type/TypeDescription;)Z
.end method

.method public abstract isTypeInitializer()Z
.end method

.method public abstract isVirtual()Z
.end method

.method public abstract represents(Ljava/lang/reflect/Constructor;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract represents(Ljava/lang/reflect/Method;)Z
.end method
