.class public Lj/b1$d;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lj/b1;


# direct methods
.method public constructor <init>(Lj/b1;)V
    .locals 0

    iput-object p1, p0, Lj/b1$d;->a:Lj/b1;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lj/b1$d;->a:Lj/b1;

    invoke-virtual {v0}, Lj/b1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/b1$d;->a:Lj/b1;

    invoke-virtual {v0}, Lj/b1;->show()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lj/b1$d;->a:Lj/b1;

    invoke-virtual {v0}, Lj/b1;->dismiss()V

    return-void
.end method
