.class public final Le2/c;
.super Ld2/e;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ld2/e$b;
        name = "label"
        required = true
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ld2/e$b;
        name = "class_name"
        required = true
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ld2/e$b;
        name = "parameter"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ld2/e;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Le2/c;->c:Ljava/lang/String;

    return-void
.end method
