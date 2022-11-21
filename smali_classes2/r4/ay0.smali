.class public final Lr4/ay0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/yx0;


# instance fields
.field public final a:Lb3/y1;


# direct methods
.method public constructor <init>(Lb3/y1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ay0;->a:Lb3/y1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/ay0;->a:Lb3/y1;

    const-string v1, "content_url_opted_out"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {v0, p1}, Lb3/y1;->o0(Z)V

    return-void
.end method
