.class public final Lr4/x01;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/y01;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/y01;

    invoke-direct {v0}, Lr4/y01;-><init>()V

    sput-object v0, Lr4/x01;->a:Lr4/y01;

    return-void
.end method

.method public static synthetic a()Lr4/y01;
    .locals 1

    sget-object v0, Lr4/x01;->a:Lr4/y01;

    return-object v0
.end method
