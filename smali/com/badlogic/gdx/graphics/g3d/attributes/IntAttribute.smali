.class public Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;
.super Lcom/badlogic/gdx/graphics/g3d/Attribute;
.source "SourceFile"


# static fields
.field public static final CullFace:J

.field public static final CullFaceAlias:Ljava/lang/String; = "cullface"


# instance fields
.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "cullface"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->d(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->value:I

    return-void
.end method

.method public static createCullFace(I)Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;-><init>(JI)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/badlogic/gdx/graphics/g3d/Attribute;)I
    .locals 5

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    iget-wide v2, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->value:I

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->value:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->compareTo(Lcom/badlogic/gdx/graphics/g3d/Attribute;)I

    move-result p1

    return p1
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;

    iget-wide v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->value:I

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;-><init>(JI)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3d7

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->value:I

    add-int/2addr v0, v1

    return v0
.end method
