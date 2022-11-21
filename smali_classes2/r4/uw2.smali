.class public abstract Lr4/uw2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lr4/vw2;

.field public final b:Lr4/mw2;


# direct methods
.method public constructor <init>(Lr4/mw2;[B)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lr4/uw2;->b:Lr4/mw2;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lr4/uw2;->a:Lr4/vw2;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lr4/vw2;->b(Lr4/uw2;)V

    :cond_0
    return-void
.end method

.method public final b(Lr4/vw2;)V
    .locals 0

    iput-object p1, p0, Lr4/uw2;->a:Lr4/vw2;

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lr4/uw2;->a(Ljava/lang/String;)V

    return-void
.end method
