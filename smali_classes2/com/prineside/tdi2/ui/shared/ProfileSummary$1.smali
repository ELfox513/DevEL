.class Lcom/prineside/tdi2/ui/shared/ProfileSummary$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ProfileSummary;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/shared/ProfileSummary;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$1;->o:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$1;->o:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->toggleXpInfoDropdown()V

    return-void
.end method
