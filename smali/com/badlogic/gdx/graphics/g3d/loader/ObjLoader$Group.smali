.class Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Group"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Lcom/badlogic/gdx/graphics/g3d/Material;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->a:Ljava/lang/String;

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    const/16 v0, 0xc8

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->c:Lcom/badlogic/gdx/utils/Array;

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->d:I

    new-instance p1, Lcom/badlogic/gdx/graphics/g3d/Material;

    const-string v0, ""

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->g:Lcom/badlogic/gdx/graphics/g3d/Material;

    const-string p1, "default"

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->b:Ljava/lang/String;

    return-void
.end method
