.class public final Lr4/q80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/u50;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/u50<",
        "Lr4/cs0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/u50;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u50<",
            "-",
            "Lr4/q90;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lr4/r80;


# direct methods
.method public constructor <init>(Lr4/r80;Lr4/u50;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/u50<",
            "-",
            "Lr4/q90;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lr4/q80;->b:Lr4/r80;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/q80;->a:Lr4/u50;

    return-void
.end method

.method public static synthetic b(Lr4/q80;)Lr4/u50;
    .locals 0

    iget-object p0, p0, Lr4/q80;->a:Lr4/u50;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    check-cast p1, Lr4/cs0;

    iget-object p1, p0, Lr4/q80;->a:Lr4/u50;

    iget-object v0, p0, Lr4/q80;->b:Lr4/r80;

    invoke-interface {p1, v0, p2}, Lr4/u50;->a(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
