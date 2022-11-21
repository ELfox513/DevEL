.class public final enum Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrecomputedMethodGraph"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;


# instance fields
.field private final transient methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;->INSTANCE:Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct/range {p0 .. p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v12, Lnet/bytebuddy/description/method/MethodDescription$Latent;

    const-class v1, Ljava/util/concurrent/Callable;

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const-class v1, Ljava/lang/Exception;

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    sget-object v22, Lnet/bytebuddy/description/annotation/AnnotationValue;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue;

    sget-object v23, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    const-string v3, "call"

    const/16 v4, 0x401

    move-object v1, v12

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    invoke-direct/range {v1 .. v11}, Lnet/bytebuddy/description/method/MethodDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-interface {v12}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object v1

    new-instance v2, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Simple;

    invoke-direct {v2, v12}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Simple;-><init>(Lnet/bytebuddy/description/method/MethodDescription;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lnet/bytebuddy/description/method/MethodDescription$Latent;

    const-class v2, Ljava/lang/Runnable;

    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v14

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    sget-object v18, Lnet/bytebuddy/description/type/TypeDescription$Generic;->VOID:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v20

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    const-string v15, "run"

    const/16 v16, 0x401

    move-object v13, v1

    invoke-direct/range {v13 .. v23}, Lnet/bytebuddy/description/method/MethodDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object v2

    new-instance v3, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Simple;

    invoke-direct {v3, v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Simple;-><init>(Lnet/bytebuddy/description/method/MethodDescription;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Simple;

    invoke-direct {v1, v0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Simple;-><init>(Ljava/util/LinkedHashMap;)V

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;-><init>(Lnet/bytebuddy/dynamic/scaffold/MethodGraph;Lnet/bytebuddy/dynamic/scaffold/MethodGraph;Ljava/util/Map;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;

    return-object v0
.end method


# virtual methods
.method public compile(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
    .locals 0

    iget-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    return-object p1
.end method

.method public compile(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
    .locals 0

    iget-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    return-object p1
.end method

.method public compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    return-object p1
.end method

.method public compile(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    return-object p1
.end method
