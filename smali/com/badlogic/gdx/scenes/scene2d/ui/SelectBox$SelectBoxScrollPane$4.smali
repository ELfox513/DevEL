.class Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$4;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/List;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->C()Lcom/badlogic/gdx/scenes/scene2d/ui/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/scenes/scene2d/ui/List<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic U:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$4;->U:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    return-void
.end method


# virtual methods
.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$4;->U:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->L0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
