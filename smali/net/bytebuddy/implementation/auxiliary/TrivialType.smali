.class public final enum Lnet/bytebuddy/implementation/auxiliary/TrivialType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/auxiliary/TrivialType;",
        ">;",
        "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/auxiliary/TrivialType;

.field public static final enum PLAIN:Lnet/bytebuddy/implementation/auxiliary/TrivialType;

.field public static final enum SIGNATURE_RELEVANT:Lnet/bytebuddy/implementation/auxiliary/TrivialType;


# instance fields
.field private final eager:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/TrivialType;

    const-string v1, "SIGNATURE_RELEVANT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/implementation/auxiliary/TrivialType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/TrivialType;->SIGNATURE_RELEVANT:Lnet/bytebuddy/implementation/auxiliary/TrivialType;

    new-instance v1, Lnet/bytebuddy/implementation/auxiliary/TrivialType;

    const-string v4, "PLAIN"

    invoke-direct {v1, v4, v3, v2}, Lnet/bytebuddy/implementation/auxiliary/TrivialType;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lnet/bytebuddy/implementation/auxiliary/TrivialType;->PLAIN:Lnet/bytebuddy/implementation/auxiliary/TrivialType;

    const/4 v4, 0x2

    new-array v4, v4, [Lnet/bytebuddy/implementation/auxiliary/TrivialType;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lnet/bytebuddy/implementation/auxiliary/TrivialType;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/TrivialType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lnet/bytebuddy/implementation/auxiliary/TrivialType;->eager:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/auxiliary/TrivialType;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/auxiliary/TrivialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/auxiliary/TrivialType;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/auxiliary/TrivialType;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/auxiliary/TrivialType;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/TrivialType;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/auxiliary/TrivialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/auxiliary/TrivialType;

    return-object v0
.end method


# virtual methods
.method public getSuffix()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Lnet/bytebuddy/utility/RandomString;->hashOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public make(Ljava/lang/String;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/MethodAccessorFactory;)Lnet/bytebuddy/dynamic/DynamicType;
    .locals 1

    new-instance p3, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {p3, p2}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;)V

    sget-object p2, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->DISABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    invoke-virtual {p3, p2}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/ByteBuddy;

    move-result-object p2

    sget-object p3, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;

    invoke-virtual {p2, p3}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/ByteBuddy;

    move-result-object p2

    const-class p3, Ljava/lang/Object;

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    invoke-virtual {p2, p3, v0}, Lnet/bytebuddy/ByteBuddy;->subclass(Ljava/lang/Class;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    iget-boolean p3, p0, Lnet/bytebuddy/implementation/auxiliary/TrivialType;->eager:Z

    if-eqz p3, :cond_0

    const-class p3, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$SignatureRelevant;

    invoke-static {p3}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->build(Z)Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :goto_0
    invoke-interface {p2, p3}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->annotateType(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    invoke-interface {p2, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;->DEFAULT_TYPE_MODIFIER:[Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->modifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object p1

    return-object p1
.end method
