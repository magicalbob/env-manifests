node default {
  include env_base
}

node env-box-01 {
  include env_base
  
  include machine_box_01
}

node env-box-02 {
  include env_base
  
  include machine_box_02
}
