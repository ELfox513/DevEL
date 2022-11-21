.class public final Lr4/av1;
.super Lr4/m70;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr4/cv1;


# direct methods
.method public constructor <init>(Lr4/cv1;)V
    .locals 0

    iput-object p1, p0, Lr4/av1;->a:Lr4/cv1;

    invoke-direct {p0}, Lr4/m70;-><init>()V

    return-void
.end method


# virtual methods
.method public final c5(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr4/g70;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/av1;->a:Lr4/cv1;

    invoke-static {v0, p1}, Lr4/cv1;->c(Lr4/cv1;Ljava/util/List;)V

    return-void
.end method
