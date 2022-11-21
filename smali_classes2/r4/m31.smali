.class public final Lr4/m31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/k31<",
        "TAdT;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/q12<",
            "TAdT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/q12<",
            "TAdT;>;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/m31;->a:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/m31;->a:Lr4/is3;

    check-cast v0, Lr4/zr3;

    invoke-virtual {v0}, Lr4/zr3;->d()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lr4/k31;

    invoke-direct {v1, v0}, Lr4/k31;-><init>(Ljava/util/Map;)V

    return-object v1
.end method
