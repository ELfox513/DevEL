.class public Lz1/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/s$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lz1/e;


# direct methods
.method public constructor <init>(Lz1/e;)V
    .locals 0

    iput-object p1, p0, Lz1/e$c;->b:Lz1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lz1/e$c;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lz1/e;Lz1/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lz1/e$c;-><init>(Lz1/e;)V

    return-void
.end method


# virtual methods
.method public a(Lz1/s;Lz1/s;)V
    .locals 2

    new-instance v0, Lz1/e$b;

    invoke-direct {v0}, Lz1/e$b;-><init>()V

    iget v1, p0, Lz1/e$c;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lz1/e$c;->a:I

    iput v1, v0, Lz1/e$b;->a:I

    iput-object p1, v0, Lz1/e$b;->c:Lz1/s;

    iput-object p2, v0, Lz1/e$b;->b:Lz1/s;

    iget-object p2, p0, Lz1/e$c;->b:Lz1/e;

    invoke-static {p2}, Lz1/e;->a(Lz1/e;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lz1/e$c;->b:Lz1/e;

    invoke-static {p2}, Lz1/e;->b(Lz1/e;)[Lz1/e$b;

    move-result-object p2

    invoke-virtual {p1}, Lz1/s;->p()I

    move-result p1

    aput-object v0, p2, p1

    return-void
.end method
