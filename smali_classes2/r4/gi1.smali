.class public final Lr4/gi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/fi1;

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/jj1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/fi1;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/fi1;",
            "Lr4/is3<",
            "Lr4/jj1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/gi1;->a:Lr4/fi1;

    iput-object p2, p0, Lr4/gi1;->b:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/gi1;->b:Lr4/is3;

    check-cast v0, Lr4/ii1;

    invoke-virtual {v0}, Lr4/ii1;->b()Lr4/jj1;

    move-result-object v0

    invoke-virtual {v0}, Lr4/jj1;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
