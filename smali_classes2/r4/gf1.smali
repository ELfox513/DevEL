.class public final Lr4/gf1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/pu2;

.field public c:Z


# direct methods
.method public constructor <init>(Lr4/no2;Lr4/pu2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lr4/no2;->p:Ljava/util/List;

    iput-object p1, p0, Lr4/gf1;->a:Ljava/util/List;

    iput-object p2, p0, Lr4/gf1;->b:Lr4/pu2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lr4/gf1;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/gf1;->b:Lr4/pu2;

    iget-object v1, p0, Lr4/gf1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lr4/pu2;->a(Ljava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/gf1;->c:Z

    :cond_0
    return-void
.end method
