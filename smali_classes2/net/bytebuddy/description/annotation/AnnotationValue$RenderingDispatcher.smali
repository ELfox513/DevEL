.class public abstract enum Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "RenderingDispatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

.field private static final ARRAY_PREFIX:Ljava/lang/String; = "Array with component tag: "

.field public static final CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

.field public static final enum JAVA_14_CAPABLE_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

.field public static final enum JAVA_17_CAPABLE_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

.field public static final enum JAVA_19_CAPABLE_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

.field public static final enum JAVA_9_CAPABLE_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

.field public static final enum LEGACY_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;


# instance fields
.field private final closingBrace:C

.field private final componentAsInteger:Z

.field private final openingBrace:C


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v6, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$1;

    const-string v1, "LEGACY_VM"

    const/4 v2, 0x0

    const/16 v3, 0x5b

    const/16 v4, 0x5d

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$1;-><init>(Ljava/lang/String;ICCZ)V

    sput-object v6, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->LEGACY_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$2;

    const-string v8, "JAVA_9_CAPABLE_VM"

    const/4 v9, 0x1

    const/16 v10, 0x7b

    const/16 v11, 0x7d

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$2;-><init>(Ljava/lang/String;ICCZ)V

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->JAVA_9_CAPABLE_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$3;

    const-string v14, "JAVA_14_CAPABLE_VM"

    const/4 v15, 0x2

    const/16 v16, 0x7b

    const/16 v17, 0x7d

    const/16 v18, 0x1

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$3;-><init>(Ljava/lang/String;ICCZ)V

    sput-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->JAVA_14_CAPABLE_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    new-instance v2, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$4;

    const-string v8, "JAVA_17_CAPABLE_VM"

    const/4 v9, 0x3

    const/4 v12, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$4;-><init>(Ljava/lang/String;ICCZ)V

    sput-object v2, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->JAVA_17_CAPABLE_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    new-instance v3, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$5;

    sget-object v4, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-static {v4}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v5

    sget-object v7, Lnet/bytebuddy/ClassFileVersion;->JAVA_V17:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v5, v7}, Lnet/bytebuddy/ClassFileVersion;->isLessThan(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v18

    const-string v14, "JAVA_19_CAPABLE_VM"

    const/4 v15, 0x4

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$5;-><init>(Ljava/lang/String;ICCZ)V

    sput-object v3, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->JAVA_19_CAPABLE_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    const/4 v5, 0x5

    new-array v5, v5, [Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    const/4 v8, 0x0

    aput-object v6, v5, v8

    const/4 v8, 0x1

    aput-object v0, v5, v8

    const/4 v8, 0x2

    aput-object v1, v5, v8

    const/4 v8, 0x3

    aput-object v2, v5, v8

    const/4 v8, 0x4

    aput-object v3, v5, v8

    sput-object v5, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->$VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    invoke-static {v4}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v4

    sget-object v5, Lnet/bytebuddy/ClassFileVersion;->JAVA_V19:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v4, v5}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v5

    if-eqz v5, :cond_0

    sput-object v3, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v7}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v3

    if-eqz v3, :cond_1

    sput-object v2, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    goto :goto_0

    :cond_1
    sget-object v2, Lnet/bytebuddy/ClassFileVersion;->JAVA_V14:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v4, v2}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    goto :goto_0

    :cond_2
    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V9:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v4, v1}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v1

    if-eqz v1, :cond_3

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    goto :goto_0

    :cond_3
    sput-object v6, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICCZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CCZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-char p3, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->openingBrace:C

    iput-char p4, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->closingBrace:C

    iput-boolean p5, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->componentAsInteger:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ICCZLnet/bytebuddy/description/annotation/AnnotationValue$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;-><init>(Ljava/lang/String;ICCZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;
    .locals 1

    const-class v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->$VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    return-object v0
.end method


# virtual methods
.method public toArrayErrorString(Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Array with component tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->componentAsInteger:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->isDefined()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->getTag()I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->getTag()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toSourceString(B)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract toSourceString(C)Ljava/lang/String;
.end method

.method public abstract toSourceString(D)Ljava/lang/String;
.end method

.method public abstract toSourceString(F)Ljava/lang/String;
.end method

.method public toSourceString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract toSourceString(J)Ljava/lang/String;
.end method

.method public abstract toSourceString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public toSourceString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->openingBrace:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-char p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->closingBrace:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract toSourceString(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
.end method

.method public toSourceString(S)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toSourceString(Z)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toTypeErrorString(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
