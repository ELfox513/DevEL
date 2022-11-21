.class public final Lh2/i$b;
.super Lh2/o$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lh2/o$c;

.field public b:Lh2/o$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh2/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lh2/o;
    .locals 4

    new-instance v0, Lh2/i;

    iget-object v1, p0, Lh2/i$b;->a:Lh2/o$c;

    iget-object v2, p0, Lh2/i$b;->b:Lh2/o$b;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lh2/i;-><init>(Lh2/o$c;Lh2/o$b;Lh2/i$a;)V

    return-object v0
.end method

.method public b(Lh2/o$b;)Lh2/o$a;
    .locals 0

    iput-object p1, p0, Lh2/i$b;->b:Lh2/o$b;

    return-object p0
.end method

.method public c(Lh2/o$c;)Lh2/o$a;
    .locals 0

    iput-object p1, p0, Lh2/i$b;->a:Lh2/o$c;

    return-object p0
.end method
