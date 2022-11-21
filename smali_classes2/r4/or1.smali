.class public final Lr4/or1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/pr1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/pr1;

    invoke-direct {v0}, Lr4/pr1;-><init>()V

    sput-object v0, Lr4/or1;->a:Lr4/pr1;

    return-void
.end method

.method public static synthetic a()Lr4/pr1;
    .locals 1

    sget-object v0, Lr4/or1;->a:Lr4/pr1;

    return-object v0
.end method
