.class public final Lr4/ww2;
.super Lr4/uw2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lr4/mw2;[B)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lr4/uw2;-><init>(Lr4/mw2;[B)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lr4/uw2;->b:Lr4/mw2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr4/mw2;->e(Lorg/json/JSONObject;)V

    return-object v0
.end method
