.class public final synthetic Lcom/prineside/tdi2/ui/shared/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

.field public final synthetic b:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/p1;->a:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    iput p2, p0, Lcom/prineside/tdi2/ui/shared/p1;->b:I

    iput p3, p0, Lcom/prineside/tdi2/ui/shared/p1;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/p1;->a:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    iget v1, p0, Lcom/prineside/tdi2/ui/shared/p1;->b:I

    iget v2, p0, Lcom/prineside/tdi2/ui/shared/p1;->d:I

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->b(Lcom/prineside/tdi2/ui/shared/ProfileSummary;II)V

    return-void
.end method
