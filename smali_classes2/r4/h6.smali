.class public final Lr4/h6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/d6;


# instance fields
.field public final a:Lr4/bt3;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/ft3;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Lr4/ht3;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/bt3;

    invoke-direct {v0, p1, p2}, Lr4/bt3;-><init>(Lr4/ht3;Z)V

    iput-object v0, p0, Lr4/h6;->a:Lr4/bt3;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lr4/h6;->c:Ljava/util/List;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/h6;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/h6;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Lr4/e8;
    .locals 1

    iget-object v0, p0, Lr4/h6;->a:Lr4/bt3;

    invoke-virtual {v0}, Lr4/bt3;->F()Lr4/e8;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lr4/h6;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/h6;->e:Z

    iget-object p1, p0, Lr4/h6;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
