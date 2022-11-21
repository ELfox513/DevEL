.class public final enum Lnet/bytebuddy/description/modifier/FieldPersistence;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/modifier/FieldPersistence;",
        ">;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/modifier/FieldPersistence;

.field public static final enum PLAIN:Lnet/bytebuddy/description/modifier/FieldPersistence;

.field public static final enum TRANSIENT:Lnet/bytebuddy/description/modifier/FieldPersistence;


# instance fields
.field private final mask:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lnet/bytebuddy/description/modifier/FieldPersistence;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/bytebuddy/description/modifier/FieldPersistence;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/FieldPersistence;->PLAIN:Lnet/bytebuddy/description/modifier/FieldPersistence;

    new-instance v1, Lnet/bytebuddy/description/modifier/FieldPersistence;

    const-string v3, "TRANSIENT"

    const/4 v4, 0x1

    const/16 v5, 0x80

    invoke-direct {v1, v3, v4, v5}, Lnet/bytebuddy/description/modifier/FieldPersistence;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/bytebuddy/description/modifier/FieldPersistence;->TRANSIENT:Lnet/bytebuddy/description/modifier/FieldPersistence;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/description/modifier/FieldPersistence;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/description/modifier/FieldPersistence;->$VALUES:[Lnet/bytebuddy/description/modifier/FieldPersistence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/bytebuddy/description/modifier/FieldPersistence;->mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/modifier/FieldPersistence;
    .locals 1

    const-class v0, Lnet/bytebuddy/description/modifier/FieldPersistence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/modifier/FieldPersistence;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/modifier/FieldPersistence;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/modifier/FieldPersistence;->$VALUES:[Lnet/bytebuddy/description/modifier/FieldPersistence;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/modifier/FieldPersistence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/modifier/FieldPersistence;

    return-object v0
.end method


# virtual methods
.method public getMask()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/modifier/FieldPersistence;->mask:I

    return v0
.end method

.method public getRange()I
    .locals 1

    const/16 v0, 0x80

    return v0
.end method

.method public isDefault()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/modifier/FieldPersistence;->PLAIN:Lnet/bytebuddy/description/modifier/FieldPersistence;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTransient()Z
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/modifier/FieldPersistence;->mask:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
