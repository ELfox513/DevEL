.class public Ld3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/os/Bundle;

.field public final c:Landroid/os/Bundle;

.field public final d:Landroid/content/Context;

.field public final e:Z

.field public final f:Landroid/location/Location;

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld3/c;->a:Ljava/lang/String;

    iput-object p3, p0, Ld3/c;->b:Landroid/os/Bundle;

    iput-object p4, p0, Ld3/c;->c:Landroid/os/Bundle;

    iput-object p1, p0, Ld3/c;->d:Landroid/content/Context;

    iput-boolean p5, p0, Ld3/c;->e:Z

    iput-object p6, p0, Ld3/c;->f:Landroid/location/Location;

    iput p7, p0, Ld3/c;->g:I

    iput p8, p0, Ld3/c;->h:I

    iput-object p9, p0, Ld3/c;->i:Ljava/lang/String;

    iput-object p10, p0, Ld3/c;->j:Ljava/lang/String;

    return-void
.end method
