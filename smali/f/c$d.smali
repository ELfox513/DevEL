.class public Lf/c$d;
.super Lf/c$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lu0/b;


# direct methods
.method public constructor <init>(Lu0/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf/c$g;-><init>(Lf/c$a;)V

    iput-object p1, p0, Lf/c$d;->a:Lu0/b;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Lf/c$d;->a:Lu0/b;

    invoke-virtual {v0}, Lu0/b;->start()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lf/c$d;->a:Lu0/b;

    invoke-virtual {v0}, Lu0/b;->stop()V

    return-void
.end method
