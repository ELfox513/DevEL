.class Lcom/prineside/tdi2/ui/components/RatingForm$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/RatingForm;->showStarsForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/RatingForm;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/RatingForm;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/RatingForm$5;->b:Lcom/prineside/tdi2/ui/components/RatingForm;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/RatingForm$5;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/RatingForm$5;->b:Lcom/prineside/tdi2/ui/components/RatingForm;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/RatingForm$5;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/RatingForm;->showFeedbackForm(I)V

    return-void
.end method
